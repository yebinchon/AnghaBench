
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int dummy; } ;
struct ieee80211_hw {int wiphy; } ;


 int cfg80211_sched_scan_results (int ) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int trace_api_sched_scan_results (struct ieee80211_local*) ;

void ieee80211_sched_scan_results(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);

 trace_api_sched_scan_results(local);

 cfg80211_sched_scan_results(hw->wiphy);
}
