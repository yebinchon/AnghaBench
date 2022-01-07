
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_local {int mtx; int sched_scan_sdata; TYPE_1__* ops; } ;
struct TYPE_2__ {int sched_scan_stop; } ;


 int ENOTSUPP ;
 int drv_sched_scan_stop (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rcu_access_pointer (int ) ;

int ieee80211_request_sched_scan_stop(struct ieee80211_sub_if_data *sdata)
{
 struct ieee80211_local *local = sdata->local;
 int ret = 0;

 mutex_lock(&local->mtx);

 if (!local->ops->sched_scan_stop) {
  ret = -ENOTSUPP;
  goto out;
 }

 if (rcu_access_pointer(local->sched_scan_sdata))
  drv_sched_scan_stop(local, sdata);

out:
 mutex_unlock(&local->mtx);

 return ret;
}
