
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_txb {int nr_frags; TYPE_3__** fragments; } ;
struct TYPE_6__ {int tx_bytes; int tx_packets; } ;
struct TYPE_5__ {int frag; struct ieee80211_txb* txb; } ;
struct ieee80211_device {int lock; TYPE_4__* dev; TYPE_2__ stats; int rate; int (* softmac_data_hard_start_xmit ) (TYPE_3__*,TYPE_4__*,int ) ;TYPE_1__ tx_pending; scalar_t__ queue_stop; } ;
struct TYPE_8__ {int trans_start; } ;
struct TYPE_7__ {scalar_t__ len; } ;


 int ieee80211_sta_wakeup (struct ieee80211_device*,int ) ;
 int ieee80211_txb_free (struct ieee80211_txb*) ;
 int jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*,TYPE_4__*,int ) ;

void ieee80211_softmac_xmit(struct ieee80211_txb *txb, struct ieee80211_device *ieee)
{


 unsigned long flags;
 int i;

 spin_lock_irqsave(&ieee->lock,flags);


 ieee80211_sta_wakeup(ieee,0);

 for(i = 0; i < txb->nr_frags; i++) {

  if (ieee->queue_stop){
   ieee->tx_pending.txb = txb;
   ieee->tx_pending.frag = i;
   goto exit;
  }else{
   ieee->softmac_data_hard_start_xmit(
    txb->fragments[i],
    ieee->dev,ieee->rate);

   ieee->stats.tx_packets++;
   ieee->stats.tx_bytes += txb->fragments[i]->len;
   ieee->dev->trans_start = jiffies;
  }
 }

 ieee80211_txb_free(txb);

 exit:
 spin_unlock_irqrestore(&ieee->lock,flags);

}
