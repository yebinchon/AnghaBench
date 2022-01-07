
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct ieee80211_device {scalar_t__ ps; scalar_t__ iw_mode; scalar_t__ state; int sta_sleep; int ack_tx_to_ieee; int lock; int mgmt_tx_lock; void* ps_tl; void* ps_th; int dev; scalar_t__ (* ps_is_queue_empty ) (int ) ;int (* enter_sleep_state ) (int ,void*,void*) ;} ;


 scalar_t__ IEEE80211_LINKED ;
 scalar_t__ IEEE80211_PS_DISABLED ;
 scalar_t__ IW_MODE_INFRA ;
 int ieee80211_sta_ps_send_null_frame (struct ieee80211_device*,int) ;
 short ieee80211_sta_ps_sleep (struct ieee80211_device*,void**,void**) ;
 int ieee80211_sta_wakeup (struct ieee80211_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,void*,void*) ;
 scalar_t__ stub2 (int ) ;

inline void ieee80211_sta_ps(struct ieee80211_device *ieee)
{

 u32 th,tl;
 short sleep;

 unsigned long flags,flags2;

 spin_lock_irqsave(&ieee->lock, flags);

 if((ieee->ps == IEEE80211_PS_DISABLED ||
  ieee->iw_mode != IW_MODE_INFRA ||
  ieee->state != IEEE80211_LINKED)){


  spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);

  ieee80211_sta_wakeup(ieee, 1);

  spin_unlock_irqrestore(&ieee->mgmt_tx_lock, flags2);
 }

 sleep = ieee80211_sta_ps_sleep(ieee,&th, &tl);

 if(sleep == 0)
  goto out;

 if(sleep == 1){

  if(ieee->sta_sleep == 1)
   ieee->enter_sleep_state(ieee->dev,th,tl);

  else if(ieee->sta_sleep == 0){

   spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);

   if(ieee->ps_is_queue_empty(ieee->dev)){


    ieee->sta_sleep = 2;

    ieee->ack_tx_to_ieee = 1;

    ieee80211_sta_ps_send_null_frame(ieee,1);

    ieee->ps_th = th;
    ieee->ps_tl = tl;
   }
   spin_unlock_irqrestore(&ieee->mgmt_tx_lock, flags2);

  }


 }else if(sleep == 2){

  spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);

  ieee80211_sta_wakeup(ieee,1);

  spin_unlock_irqrestore(&ieee->mgmt_tx_lock, flags2);
 }

out:
 spin_unlock_irqrestore(&ieee->lock, flags);

}
