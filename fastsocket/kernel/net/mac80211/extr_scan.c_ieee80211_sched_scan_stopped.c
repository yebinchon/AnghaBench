
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int sched_scan_stopped_work; int hw; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_queue_work (int *,int *) ;
 int trace_api_sched_scan_stopped (struct ieee80211_local*) ;

void ieee80211_sched_scan_stopped(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);

 trace_api_sched_scan_stopped(local);

 ieee80211_queue_work(&local->hw, &local->sched_scan_stopped_work);
}
