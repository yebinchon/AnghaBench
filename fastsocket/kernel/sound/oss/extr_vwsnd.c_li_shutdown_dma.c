
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* page1; } ;
typedef TYPE_2__ lithium_t ;
struct TYPE_9__ {TYPE_1__* desc; int ctlval; TYPE_2__* lith; } ;
typedef TYPE_3__ dma_chan_t ;
struct TYPE_7__ {scalar_t__ direction; int ctlreg; } ;


 int DBGEV (char*,TYPE_3__*) ;
 int DBGPV (char*,int ,int ) ;
 scalar_t__ LI_CCFG_DIR_OUT ;
 int LI_CCTL_DMA_ENABLE ;
 int li_writel (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void li_shutdown_dma(dma_chan_t *chan)
{
 lithium_t *lith = chan->lith;
 void * lith1 = lith->page1;

 DBGEV("(chan=0x%p)\n", chan);

 chan->ctlval &= ~LI_CCTL_DMA_ENABLE;
 DBGPV("ctlreg 0x%x = 0x%lx\n", chan->desc->ctlreg, chan->ctlval);
 li_writel(lith, chan->desc->ctlreg, chan->ctlval);
 if (lith1 && chan->desc->direction == LI_CCFG_DIR_OUT)
  * (volatile unsigned long *) (lith1 + 0x500) = 0;
}
