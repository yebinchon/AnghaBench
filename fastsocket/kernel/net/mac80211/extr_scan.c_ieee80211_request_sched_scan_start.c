
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_sub_if_data {struct ieee80211_local* local; } ;
struct ieee80211_sched_scan_ies {int * ie; int * len; } ;
struct TYPE_6__ {TYPE_2__* wiphy; } ;
struct ieee80211_local {int scan_ies_len; int mtx; int sched_scan_sdata; TYPE_3__ hw; TYPE_1__* ops; } ;
struct cfg80211_sched_scan_request {int ie_len; int ie; } ;
struct TYPE_5__ {int * bands; } ;
struct TYPE_4__ {int sched_scan_start; } ;


 int EBUSY ;
 int ENOMEM ;
 int ENOTSUPP ;
 int GFP_KERNEL ;
 int IEEE80211_MAX_SSID_LEN ;
 int IEEE80211_NUM_BANDS ;
 int drv_sched_scan_start (struct ieee80211_local*,struct ieee80211_sub_if_data*,struct cfg80211_sched_scan_request*,struct ieee80211_sched_scan_ies*) ;
 int ieee80211_build_preq_ies (struct ieee80211_local*,int ,int,int ,int,int,int ,int ) ;
 int kfree (int ) ;
 int kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct ieee80211_sub_if_data*) ;

int ieee80211_request_sched_scan_start(struct ieee80211_sub_if_data *sdata,
           struct cfg80211_sched_scan_request *req)
{
 struct ieee80211_local *local = sdata->local;
 struct ieee80211_sched_scan_ies sched_scan_ies = {};
 int ret, i, iebufsz;

 iebufsz = 2 + IEEE80211_MAX_SSID_LEN +
    local->scan_ies_len + req->ie_len;

 mutex_lock(&local->mtx);

 if (rcu_access_pointer(local->sched_scan_sdata)) {
  ret = -EBUSY;
  goto out;
 }

 if (!local->ops->sched_scan_start) {
  ret = -ENOTSUPP;
  goto out;
 }

 for (i = 0; i < IEEE80211_NUM_BANDS; i++) {
  if (!local->hw.wiphy->bands[i])
   continue;

  sched_scan_ies.ie[i] = kzalloc(iebufsz, GFP_KERNEL);
  if (!sched_scan_ies.ie[i]) {
   ret = -ENOMEM;
   goto out_free;
  }

  sched_scan_ies.len[i] =
   ieee80211_build_preq_ies(local, sched_scan_ies.ie[i],
       iebufsz, req->ie, req->ie_len,
       i, (u32) -1, 0);
 }

 ret = drv_sched_scan_start(local, sdata, req, &sched_scan_ies);
 if (ret == 0)
  rcu_assign_pointer(local->sched_scan_sdata, sdata);

out_free:
 while (i > 0)
  kfree(sched_scan_ies.ie[--i]);
out:
 mutex_unlock(&local->mtx);
 return ret;
}
