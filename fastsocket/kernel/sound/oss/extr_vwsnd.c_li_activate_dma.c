
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ctlval; TYPE_1__* desc; int lith; } ;
typedef TYPE_2__ dma_chan_t ;
struct TYPE_4__ {int ctlreg; } ;


 int DBGPV (char*,int ) ;
 int LI_CCTL_DMA_ENABLE ;
 int li_writel (int ,int ,int ) ;

__attribute__((used)) static __inline__ void li_activate_dma(dma_chan_t *chan)
{
 chan->ctlval |= LI_CCTL_DMA_ENABLE;
 DBGPV("ctlval = 0x%lx\n", chan->ctlval);
 li_writel(chan->lith, chan->desc->ctlreg, chan->ctlval);
}
