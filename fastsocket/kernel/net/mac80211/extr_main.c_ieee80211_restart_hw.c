
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int in_reconfig; int restart_work; } ;
struct ieee80211_hw {int wiphy; } ;


 int IEEE80211_MAX_QUEUE_MAP ;
 int IEEE80211_QUEUE_STOP_REASON_SUSPEND ;
 int barrier () ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_stop_queues_by_reason (struct ieee80211_hw*,int ,int ) ;
 int schedule_work (int *) ;
 int trace_api_restart_hw (struct ieee80211_local*) ;
 int wiphy_info (int ,char*) ;

void ieee80211_restart_hw(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);

 trace_api_restart_hw(local);

 wiphy_info(hw->wiphy,
     "Hardware restart was requested\n");


 ieee80211_stop_queues_by_reason(hw, IEEE80211_MAX_QUEUE_MAP,
     IEEE80211_QUEUE_STOP_REASON_SUSPEND);





 local->in_reconfig = 1;
 barrier();

 schedule_work(&local->restart_work);
}
