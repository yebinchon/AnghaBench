
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int hw_roc_done; } ;
struct ieee80211_hw {int dummy; } ;


 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_queue_work (struct ieee80211_hw*,int *) ;
 int trace_api_remain_on_channel_expired (struct ieee80211_local*) ;

void ieee80211_remain_on_channel_expired(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);

 trace_api_remain_on_channel_expired(local);

 ieee80211_queue_work(hw, &local->hw_roc_done);
}
