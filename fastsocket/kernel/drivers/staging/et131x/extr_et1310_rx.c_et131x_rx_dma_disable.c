
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct et131x_adapter {TYPE_2__* pdev; TYPE_4__* regs; } ;
struct TYPE_7__ {int halt_status; } ;
struct TYPE_12__ {void* value; TYPE_1__ bits; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_11__ {TYPE_3__ csr; } ;
struct TYPE_10__ {TYPE_5__ rxdma; } ;
struct TYPE_8__ {int dev; } ;
typedef TYPE_6__ RXDMA_CSR_t ;


 int dev_err (int *,char*,void*) ;
 void* readl (int *) ;
 int udelay (int) ;
 int writel (int,int *) ;

void et131x_rx_dma_disable(struct et131x_adapter *etdev)
{
 RXDMA_CSR_t csr;


 writel(0x00002001, &etdev->regs->rxdma.csr.value);
 csr.value = readl(&etdev->regs->rxdma.csr.value);
 if (csr.bits.halt_status != 1) {
  udelay(5);
  csr.value = readl(&etdev->regs->rxdma.csr.value);
  if (csr.bits.halt_status != 1)
   dev_err(&etdev->pdev->dev,
    "RX Dma failed to enter halt state. CSR 0x%08x\n",
    csr.value);
 }
}
