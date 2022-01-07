
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int mtx; int hw; int scan_work; int scan_sdata; TYPE_1__* ops; int scanning; int scan_req; } ;
struct TYPE_2__ {scalar_t__ cancel_hw_scan; } ;


 int SCAN_HW_SCANNING ;
 int __ieee80211_scan_completed (int *,int,int) ;
 int cancel_delayed_work (int *) ;
 int drv_cancel_hw_scan (struct ieee80211_local*,int ) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_dereference_protected (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void ieee80211_scan_cancel(struct ieee80211_local *local)
{
 mutex_lock(&local->mtx);
 if (!local->scan_req)
  goto out;

 if (test_bit(SCAN_HW_SCANNING, &local->scanning)) {
  if (local->ops->cancel_hw_scan)
   drv_cancel_hw_scan(local,
    rcu_dereference_protected(local->scan_sdata,
      lockdep_is_held(&local->mtx)));
  goto out;
 }






 cancel_delayed_work(&local->scan_work);

 __ieee80211_scan_completed(&local->hw, 1, 0);
out:
 mutex_unlock(&local->mtx);
}
