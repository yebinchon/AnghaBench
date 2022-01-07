
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ieee80211_txb {unsigned int queue_index; int nr_frags; TYPE_3__** fragments; } ;
struct TYPE_5__ {int multicast; } ;
struct ieee80211_device {int lock; int rate; int dev; int (* softmac_data_hard_start_xmit ) (TYPE_3__*,int ,int ) ;int * skb_waitQ; scalar_t__ queue_stop; int (* check_nic_enough_desc ) (int ,unsigned int) ;TYPE_1__ stats; } ;
struct TYPE_6__ {scalar_t__ bMulticast; } ;
typedef TYPE_2__ cb_desc ;
struct TYPE_7__ {scalar_t__ cb; } ;


 scalar_t__ MAX_DEV_ADDR_SIZE ;
 int ieee80211_sta_wakeup (struct ieee80211_device*,int ) ;
 int ieee80211_txb_free (struct ieee80211_txb*) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,TYPE_3__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,unsigned int) ;
 int stub2 (TYPE_3__*,int ,int ) ;

void ieee80211_softmac_xmit(struct ieee80211_txb *txb, struct ieee80211_device *ieee)
{

 unsigned int queue_index = txb->queue_index;
 unsigned long flags;
 int i;
 cb_desc *tcb_desc = ((void*)0);

 spin_lock_irqsave(&ieee->lock,flags);


 ieee80211_sta_wakeup(ieee,0);




 tcb_desc = (cb_desc *)(txb->fragments[0]->cb + MAX_DEV_ADDR_SIZE);
 if(tcb_desc->bMulticast) {
  ieee->stats.multicast++;
 }


 for(i = 0; i < txb->nr_frags; i++) {
  if ((skb_queue_len(&ieee->skb_waitQ[queue_index]) != 0) ||
  (!ieee->check_nic_enough_desc(ieee->dev,queue_index))|| (ieee->queue_stop)) {







   skb_queue_tail(&ieee->skb_waitQ[queue_index], txb->fragments[i]);
  }else{
   ieee->softmac_data_hard_start_xmit(
     txb->fragments[i],
     ieee->dev,ieee->rate);



  }
 }

 ieee80211_txb_free(txb);


 spin_unlock_irqrestore(&ieee->lock,flags);

}
