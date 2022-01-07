
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* page2; } ;
typedef TYPE_2__ lithium_t ;
struct TYPE_8__ {int ctlval; TYPE_1__* desc; TYPE_2__* lith; } ;
typedef TYPE_3__ dma_chan_t ;
struct TYPE_6__ {scalar_t__ direction; int ctlreg; } ;


 int DBGPV (char*,int,...) ;
 scalar_t__ LI_CCFG_DIR_OUT ;
 int LI_CCTL_DMA_ENABLE ;
 int LI_CCTL_RPTR ;
 int LI_CCTL_WPTR ;
 int li_writel (TYPE_2__*,int ,int) ;

__attribute__((used)) static void li_deactivate_dma(dma_chan_t *chan)
{
 lithium_t *lith = chan->lith;
 void * lith2 = lith->page2;

 chan->ctlval &= ~(LI_CCTL_DMA_ENABLE | LI_CCTL_RPTR | LI_CCTL_WPTR);
 DBGPV("ctlval = 0x%lx\n", chan->ctlval);
 DBGPV("ctlreg 0x%x = 0x%lx\n", chan->desc->ctlreg, chan->ctlval);
 li_writel(lith, chan->desc->ctlreg, chan->ctlval);
 if (lith2 && chan->desc->direction == LI_CCFG_DIR_OUT) {
  * (volatile unsigned long *) (lith2 + 0x98) = 0;
  * (volatile unsigned long *) (lith2 + 0x9C) = 0;
 }
}
