
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_sub_if_data {int vif; } ;
struct ieee80211_sched_scan_ies {int dummy; } ;
struct ieee80211_local {int hw; TYPE_1__* ops; } ;
struct cfg80211_sched_scan_request {int dummy; } ;
struct TYPE_2__ {int (* sched_scan_start ) (int *,int *,struct cfg80211_sched_scan_request*,struct ieee80211_sched_scan_ies*) ;} ;


 int check_sdata_in_driver (struct ieee80211_sub_if_data*) ;
 int might_sleep () ;
 int stub1 (int *,int *,struct cfg80211_sched_scan_request*,struct ieee80211_sched_scan_ies*) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;
 int trace_drv_sched_scan_start (struct ieee80211_local*,struct ieee80211_sub_if_data*) ;

__attribute__((used)) static inline int
drv_sched_scan_start(struct ieee80211_local *local,
       struct ieee80211_sub_if_data *sdata,
       struct cfg80211_sched_scan_request *req,
       struct ieee80211_sched_scan_ies *ies)
{
 int ret;

 might_sleep();

 check_sdata_in_driver(sdata);

 trace_drv_sched_scan_start(local, sdata);
 ret = local->ops->sched_scan_start(&local->hw, &sdata->vif,
           req, ies);
 trace_drv_return_int(local, ret);
 return ret;
}
