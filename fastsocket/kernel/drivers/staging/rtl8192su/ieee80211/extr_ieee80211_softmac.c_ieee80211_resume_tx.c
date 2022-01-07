
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int frag; TYPE_3__* txb; } ;
struct TYPE_4__ {int tx_packets; } ;
struct ieee80211_device {TYPE_2__ tx_pending; TYPE_1__ stats; int rate; int dev; int (* softmac_data_hard_start_xmit ) (int ,int ,int ) ;scalar_t__ queue_stop; } ;
struct TYPE_6__ {int nr_frags; int * fragments; } ;


 int ieee80211_txb_free (TYPE_3__*) ;
 int stub1 (int ,int ,int ) ;

void ieee80211_resume_tx(struct ieee80211_device *ieee)
{
 int i;
 for(i = ieee->tx_pending.frag; i < ieee->tx_pending.txb->nr_frags; i++) {

  if (ieee->queue_stop){
   ieee->tx_pending.frag = i;
   return;
  }else{

   ieee->softmac_data_hard_start_xmit(
    ieee->tx_pending.txb->fragments[i],
    ieee->dev,ieee->rate);

   ieee->stats.tx_packets++;

  }
 }


 ieee80211_txb_free(ieee->tx_pending.txb);
 ieee->tx_pending.txb = ((void*)0);
}
