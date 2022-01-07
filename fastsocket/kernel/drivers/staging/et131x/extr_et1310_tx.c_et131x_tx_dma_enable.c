
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct et131x_adapter {TYPE_2__* regs; scalar_t__ RegistryPhyLoopbk; } ;
struct TYPE_3__ {int csr; } ;
struct TYPE_4__ {TYPE_1__ txdma; } ;


 int ET_TXDMA_CACHE_SHIFT ;
 int ET_TXDMA_CSR_HALT ;
 int ET_TXDMA_SNGL_EPKT ;
 int PARM_DMA_CACHE_DEF ;
 int writel (int,int *) ;

void et131x_tx_dma_enable(struct et131x_adapter *etdev)
{
 u32 csr = ET_TXDMA_SNGL_EPKT;
 if (etdev->RegistryPhyLoopbk)

  csr |= ET_TXDMA_CSR_HALT;
 else



  csr |= PARM_DMA_CACHE_DEF << ET_TXDMA_CACHE_SHIFT;
 writel(csr, &etdev->regs->txdma.csr);
}
