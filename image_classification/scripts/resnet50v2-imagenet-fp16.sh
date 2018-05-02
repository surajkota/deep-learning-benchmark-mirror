python train_imagenet.py --data-train ~/data/imagenet_train.rec --data-val ~/data/val-256px-q95.rec --gpus 1,0,2,3,4,5,6,7 --batch-size 512 --data-nthreads 35 --num-epochs 120 --dtype float16 --min-random-scale 0.533 --lr 0.1 --lr-step-epochs 30,60,90 --model-prefix v2fp16/ --save-final-model-only --max-random-scale 1 --max-random-shear-ratio 0.1 --max-random-rotate-angle 10 --max-random-aspect-ratio 0.25 --optimizer nag
python train_imagenet.py --data-train ~/data/train-256px-q95.rec --data-val ~/data/val-256px-q95.rec --gpus 1,0,2,3,4,5,6,7 --batch-size 512 --data-nthreads 35 --num-epochs 95 --dtype float16 --lr 0.1 --lr-step-epochs 30,60,90 --model-prefix v2fp16/ --save-final-model-only --optimizer nag --max-random-h 0 --max-random-s 0 --max-random-l 0 --max-random-rotate-angle 0 --max-random-shear-ratio 0 --max-random-aspect-ratio 0
# above gets to 75% with 512 and 0.1