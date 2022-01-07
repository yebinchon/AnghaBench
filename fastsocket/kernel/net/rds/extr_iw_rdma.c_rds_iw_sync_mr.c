
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma_len; int list; } ;
struct TYPE_4__ {TYPE_1__ m_sg; } ;
struct rds_iw_mr {TYPE_2__ mapping; struct rds_iw_device* device; } ;
struct rds_iw_device {int dev; } ;


 int DMA_BIDIRECTIONAL ;


 int ib_dma_sync_sg_for_cpu (int ,int ,int ,int ) ;
 int ib_dma_sync_sg_for_device (int ,int ,int ,int ) ;

void rds_iw_sync_mr(void *trans_private, int direction)
{
 struct rds_iw_mr *ibmr = trans_private;
 struct rds_iw_device *rds_iwdev = ibmr->device;

 switch (direction) {
 case 129:
  ib_dma_sync_sg_for_cpu(rds_iwdev->dev, ibmr->mapping.m_sg.list,
   ibmr->mapping.m_sg.dma_len, DMA_BIDIRECTIONAL);
  break;
 case 128:
  ib_dma_sync_sg_for_device(rds_iwdev->dev, ibmr->mapping.m_sg.list,
   ibmr->mapping.m_sg.dma_len, DMA_BIDIRECTIONAL);
  break;
 }
}
