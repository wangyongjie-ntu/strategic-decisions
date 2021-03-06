alpha=2
k=32 # credit
njobs=4
dataset=credit
gamma=0.8580724846537919 # credit

python -m lib.real  --data=data/processed/$dataset --gamma=$gamma --output=outputs/counterfactuals/fair_greedydet_data_${dataset}_k_${k}_a_${alpha}_ --alpha=$alpha --k=$k --njobs=$njobs --algo=gd
python -m lib.fair  --data=data/processed/$dataset --gamma=$gamma --output=outputs/counterfactuals/fair_greedyfair_data_${dataset}_k_${k}_a_${alpha}_ --alpha=$alpha --k=$k --njobs=$njobs