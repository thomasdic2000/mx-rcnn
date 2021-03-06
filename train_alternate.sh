#!/usr/bin/env bash

# run this experiment with
# nohup bash train_alternate.sh 0 &> vgg_voc07.log &

export MXNET_CUDNN_AUTOTUNE_DEFAULT=0
export PYTHONUNBUFFERED=1
export MXNET_ENABLE_GPU_P2P=0
export PYTHONPATH=incubator-mxnet/python/

#TRAIN_DIR=model/res50-fpn/cityscape/alternate/
#DATASET=Cityscape
#SET=train
#TEST_SET=val
#mkdir -p ${TRAIN_DIR}

# Train
#python train_alternate.py \
#    --network resnet_fpn \
#    --dataset ${DATASET} \
#    --image_set ${SET} \
#    --root_path ${TRAIN_DIR} \
#    --pretrained model/resnet-50 \
#    --prefix ${TRAIN_DIR} \
#    --pretrained_epoch 0 \
#    --gpu 0 |& tee -a ${TRAIN_DIR}/train.log

python train_alternate.py --gpu 0
#python test.py --prefix model/final --epoch 0 --gpu 0
