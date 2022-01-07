
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned long long ust; void* msc; } ;
typedef TYPE_1__ ustmsc_t ;
struct TYPE_9__ {int lock; } ;
typedef TYPE_2__ lithium_t ;
struct TYPE_10__ {TYPE_4__* desc; TYPE_2__* lith; } ;
typedef TYPE_3__ dma_chan_t ;
struct TYPE_11__ {int ustreg; int mscreg; } ;
typedef TYPE_4__ dma_chan_desc_t ;


 int LI_UST_HIGH ;
 int LI_UST_LOW ;
 void* li_readl (TYPE_2__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void li_read_USTMSC(dma_chan_t *chan, ustmsc_t *ustmsc)
{
 lithium_t *lith = chan->lith;
 const dma_chan_desc_t *desc = chan->desc;
 unsigned long now_low, now_high0, now_high1, chan_ust;

 spin_lock(&lith->lock);
 {





  do {
   now_high0 = li_readl(lith, LI_UST_HIGH);
   now_low = li_readl(lith, LI_UST_LOW);







   ustmsc->msc = li_readl(lith, desc->mscreg);
   chan_ust = li_readl(lith, desc->ustreg);

   now_high1 = li_readl(lith, LI_UST_HIGH);
  } while (now_high0 != now_high1);
 }
 spin_unlock(&lith->lock);
 ustmsc->ust = ((unsigned long long) now_high0 << 32 | chan_ust);
}
