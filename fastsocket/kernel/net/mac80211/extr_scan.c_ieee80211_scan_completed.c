
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int scan_work; int hw; int scanning; } ;
struct ieee80211_hw {int dummy; } ;


 int SCAN_ABORTED ;
 int SCAN_COMPLETED ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_queue_delayed_work (int *,int *,int ) ;
 int set_bit (int ,int *) ;
 int trace_api_scan_completed (struct ieee80211_local*,int) ;

void ieee80211_scan_completed(struct ieee80211_hw *hw, bool aborted)
{
 struct ieee80211_local *local = hw_to_local(hw);

 trace_api_scan_completed(local, aborted);

 set_bit(SCAN_COMPLETED, &local->scanning);
 if (aborted)
  set_bit(SCAN_ABORTED, &local->scanning);
 ieee80211_queue_delayed_work(&local->hw, &local->scan_work, 0);
}
