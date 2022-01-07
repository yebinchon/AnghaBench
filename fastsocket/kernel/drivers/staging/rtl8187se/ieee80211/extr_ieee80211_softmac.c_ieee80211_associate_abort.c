
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_ass_rs; int no_auth_rs; } ;
struct ieee80211_device {scalar_t__ state; int lock; int associate_retry_wq; int wq; TYPE_1__ softmac_stats; int associate_seq; } ;


 scalar_t__ IEEE80211_ASSOCIATING_AUTHENTICATING ;
 scalar_t__ IEEE80211_ASSOCIATING_RETRY ;
 int IEEE80211_DEBUG_MGMT (char*) ;
 int IEEE80211_SOFTMAC_ASSOC_RETRY_TIME ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ieee80211_associate_abort(struct ieee80211_device *ieee)
{

 unsigned long flags;
 spin_lock_irqsave(&ieee->lock, flags);

 ieee->associate_seq++;







 if (ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATING){
  IEEE80211_DEBUG_MGMT("Authentication failed\n");
  ieee->softmac_stats.no_auth_rs++;
 }else{
  IEEE80211_DEBUG_MGMT("Association failed\n");
  ieee->softmac_stats.no_ass_rs++;
 }

 ieee->state = IEEE80211_ASSOCIATING_RETRY;

 queue_delayed_work(ieee->wq, &ieee->associate_retry_wq,IEEE80211_SOFTMAC_ASSOC_RETRY_TIME);

 spin_unlock_irqrestore(&ieee->lock, flags);
}
