
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int softmac_features; int is_set_key; int link_change_wq; int wq; int state; int dev; int (* data_hard_stop ) (int ) ;} ;


 int Dot11d_Reset (struct ieee80211_device*) ;
 int IEEE80211_NOLINK ;
 int IEEE_SOFTMAC_TX_QUEUE ;
 scalar_t__ IS_DOT11D_ENABLE (struct ieee80211_device*) ;
 int ieee80211_reset_queue (struct ieee80211_device*) ;
 int netif_carrier_off (int ) ;
 int notify_wx_assoc_event (struct ieee80211_device*) ;
 int queue_delayed_work (int ,int *,int ) ;
 int stub1 (int ) ;

void ieee80211_disassociate(struct ieee80211_device *ieee)
{


 netif_carrier_off(ieee->dev);
 if (ieee->softmac_features & IEEE_SOFTMAC_TX_QUEUE)
   ieee80211_reset_queue(ieee);

 if (ieee->data_hard_stop)
   ieee->data_hard_stop(ieee->dev);
 if(IS_DOT11D_ENABLE(ieee))
  Dot11d_Reset(ieee);
 ieee->state = IEEE80211_NOLINK;
 ieee->is_set_key = 0;



 queue_delayed_work(ieee->wq, &ieee->link_change_wq, 0);


 notify_wx_assoc_event(ieee);

}
