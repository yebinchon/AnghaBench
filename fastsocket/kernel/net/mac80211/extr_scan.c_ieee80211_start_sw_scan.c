
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int scan_work; int hw; scalar_t__ scan_channel_idx; int next_scan_state; int leave_oper_channel_time; scalar_t__ use_chanctx; } ;


 int EOPNOTSUPP ;
 int SCAN_DECISION ;
 int drv_sw_scan_start (struct ieee80211_local*) ;
 int ieee80211_configure_filter (struct ieee80211_local*) ;
 int ieee80211_flush_queues (struct ieee80211_local*,int *) ;
 int ieee80211_hw_config (struct ieee80211_local*,int ) ;
 int ieee80211_offchannel_stop_vifs (struct ieee80211_local*) ;
 int ieee80211_queue_delayed_work (int *,int *,int ) ;
 int jiffies ;

__attribute__((used)) static int ieee80211_start_sw_scan(struct ieee80211_local *local)
{

 if (local->use_chanctx)
  return -EOPNOTSUPP;
 drv_sw_scan_start(local);

 local->leave_oper_channel_time = jiffies;
 local->next_scan_state = SCAN_DECISION;
 local->scan_channel_idx = 0;

 ieee80211_offchannel_stop_vifs(local);


 ieee80211_flush_queues(local, ((void*)0));

 ieee80211_configure_filter(local);


 ieee80211_hw_config(local, 0);

 ieee80211_queue_delayed_work(&local->hw,
         &local->scan_work, 0);

 return 0;
}
