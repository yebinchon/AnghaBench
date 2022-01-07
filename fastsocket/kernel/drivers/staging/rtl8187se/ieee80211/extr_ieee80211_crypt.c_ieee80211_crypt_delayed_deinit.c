
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct ieee80211_device {int lock; TYPE_1__ crypt_deinit_timer; int crypt_deinit_list; } ;
struct ieee80211_crypt_data {int list; } ;


 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer_pending (TYPE_1__*) ;

void ieee80211_crypt_delayed_deinit(struct ieee80211_device *ieee,
        struct ieee80211_crypt_data **crypt)
{
 struct ieee80211_crypt_data *tmp;
 unsigned long flags;

 if (*crypt == ((void*)0))
  return;

 tmp = *crypt;
 *crypt = ((void*)0);





 spin_lock_irqsave(&ieee->lock, flags);
 list_add(&tmp->list, &ieee->crypt_deinit_list);
 if (!timer_pending(&ieee->crypt_deinit_timer)) {
  ieee->crypt_deinit_timer.expires = jiffies + HZ;
  add_timer(&ieee->crypt_deinit_timer);
 }
 spin_unlock_irqrestore(&ieee->lock, flags);
}
