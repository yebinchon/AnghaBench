
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int Fbr1BufferSize; int Fbr0BufferSize; } ;
struct et131x_adapter {TYPE_6__* pdev; TYPE_4__* regs; TYPE_1__ RxRing; scalar_t__ RegistryPhyLoopbk; } ;
struct TYPE_12__ {int fbr1_enable; int fbr1_size; int fbr0_enable; int fbr0_size; scalar_t__ halt_status; } ;
struct TYPE_14__ {int value; TYPE_5__ bits; int member_0; } ;
struct TYPE_13__ {int dev; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_10__ {TYPE_2__ csr; } ;
struct TYPE_11__ {TYPE_3__ rxdma; } ;
typedef TYPE_7__ RXDMA_CSR_t ;


 int dev_err (int *,char*,int) ;
 void* readl (int *) ;
 int udelay (int) ;
 int writel (int,int *) ;

void et131x_rx_dma_enable(struct et131x_adapter *etdev)
{
 if (etdev->RegistryPhyLoopbk)

  writel(0x1, &etdev->regs->rxdma.csr.value);
 else {

  RXDMA_CSR_t csr = { 0 };

  csr.bits.fbr1_enable = 1;
  if (etdev->RxRing.Fbr1BufferSize == 4096)
   csr.bits.fbr1_size = 1;
  else if (etdev->RxRing.Fbr1BufferSize == 8192)
   csr.bits.fbr1_size = 2;
  else if (etdev->RxRing.Fbr1BufferSize == 16384)
   csr.bits.fbr1_size = 3;
  writel(csr.value, &etdev->regs->rxdma.csr.value);

  csr.value = readl(&etdev->regs->rxdma.csr.value);
  if (csr.bits.halt_status != 0) {
   udelay(5);
   csr.value = readl(&etdev->regs->rxdma.csr.value);
   if (csr.bits.halt_status != 0) {
    dev_err(&etdev->pdev->dev,
     "RX Dma failed to exit halt state.  CSR 0x%08x\n",
     csr.value);
   }
  }
 }
}
