
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int sta_sleep; int ack_tx_to_ieee; int dev; int (* sta_wake_up ) (int ) ;} ;


 int ieee80211_sta_ps_send_null_frame (struct ieee80211_device*,int ) ;
 int printk (char*) ;
 int stub1 (int ) ;

void ieee80211_sta_wakeup(struct ieee80211_device *ieee, short nl)
{
 if(ieee->sta_sleep == 0){
  if(nl){
   printk("Warning: driver is probably failing to report TX ps error\n");
   ieee->ack_tx_to_ieee = 1;
   ieee80211_sta_ps_send_null_frame(ieee, 0);
  }
  return;

 }

 if(ieee->sta_sleep == 1)
  ieee->sta_wake_up(ieee->dev);

 ieee->sta_sleep = 0;

 if(nl){
  ieee->ack_tx_to_ieee = 1;
  ieee80211_sta_ps_send_null_frame(ieee, 0);
 }
}
