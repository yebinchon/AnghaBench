
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_device {int sta_sleep; int lock; int mgmt_tx_lock; int ps_tl; int ps_th; int dev; int (* enter_sleep_state ) (int ,int ,int ) ;} ;


 int ieee80211_sta_ps_send_null_frame (struct ieee80211_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ,int ) ;

void ieee80211_ps_tx_ack(struct ieee80211_device *ieee, short success)
{
 unsigned long flags,flags2;

 spin_lock_irqsave(&ieee->lock, flags);
 if(ieee->sta_sleep == 2){

  if(success){


   ieee->sta_sleep = 1;
   ieee->enter_sleep_state(ieee->dev,ieee->ps_th,ieee->ps_tl);
  }



 }

 else {

  if((ieee->sta_sleep == 0) && !success){
   spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);
   ieee80211_sta_ps_send_null_frame(ieee, 0);
   spin_unlock_irqrestore(&ieee->mgmt_tx_lock, flags2);
  }
 }
 spin_unlock_irqrestore(&ieee->lock, flags);
}
