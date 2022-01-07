
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_mr {int sg_dma_len; int sg; struct rds_ib_device* device; } ;
struct rds_ib_device {int dev; } ;


 int DMA_BIDIRECTIONAL ;


 int ib_dma_sync_sg_for_cpu (int ,int ,int ,int ) ;
 int ib_dma_sync_sg_for_device (int ,int ,int ,int ) ;

void rds_ib_sync_mr(void *trans_private, int direction)
{
 struct rds_ib_mr *ibmr = trans_private;
 struct rds_ib_device *rds_ibdev = ibmr->device;

 switch (direction) {
 case 129:
  ib_dma_sync_sg_for_cpu(rds_ibdev->dev, ibmr->sg,
   ibmr->sg_dma_len, DMA_BIDIRECTIONAL);
  break;
 case 128:
  ib_dma_sync_sg_for_device(rds_ibdev->dev, ibmr->sg,
   ibmr->sg_dma_len, DMA_BIDIRECTIONAL);
  break;
 }
}
