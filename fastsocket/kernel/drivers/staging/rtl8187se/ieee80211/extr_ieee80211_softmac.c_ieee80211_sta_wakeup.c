
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int sta_sleep; int dev; int (* ps_request_tx_ack ) (int ) ;int (* sta_wake_up ) (int ) ;} ;


 int ieee80211_sta_ps_send_null_frame (struct ieee80211_device*,int ) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

void ieee80211_sta_wakeup(struct ieee80211_device *ieee, short nl)
{
 if(ieee->sta_sleep == 0){
  if(nl){

   ieee->ps_request_tx_ack(ieee->dev);
   ieee80211_sta_ps_send_null_frame(ieee, 0);
  }
  return;

 }

 if(ieee->sta_sleep == 1)
  ieee->sta_wake_up(ieee->dev);

 ieee->sta_sleep = 0;

 if(nl){
  ieee->ps_request_tx_ack(ieee->dev);
  ieee80211_sta_ps_send_null_frame(ieee, 0);
 }
}
