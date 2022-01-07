
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int dev; int (* data_hard_resume ) (int ) ;scalar_t__ raw_tx; } ;


 int netif_carrier_on (int ) ;
 int stub1 (int ) ;

void ieee80211_start_monitor_mode(struct ieee80211_device *ieee)
{
 if(ieee->raw_tx){

  if (ieee->data_hard_resume)
   ieee->data_hard_resume(ieee->dev);

  netif_carrier_on(ieee->dev);
 }
}
