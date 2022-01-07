
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct TYPE_2__ {int sched_scan_results_wk; scalar_t__ sched_scan_req; } ;


 int cfg80211_wq ;
 int queue_work (int ,int *) ;
 int trace_cfg80211_sched_scan_results (struct wiphy*) ;
 TYPE_1__* wiphy_to_dev (struct wiphy*) ;

void cfg80211_sched_scan_results(struct wiphy *wiphy)
{
 trace_cfg80211_sched_scan_results(wiphy);

 if (wiphy_to_dev(wiphy)->sched_scan_req)
  queue_work(cfg80211_wq,
      &wiphy_to_dev(wiphy)->sched_scan_results_wk);
}
