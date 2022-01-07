
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int IEEE80211_MAX_QUEUE_MAP ;
 int IEEE80211_QUEUE_STOP_REASON_DRIVER ;
 int ieee80211_stop_queues_by_reason (struct ieee80211_hw*,int ,int ) ;

void ieee80211_stop_queues(struct ieee80211_hw *hw)
{
 ieee80211_stop_queues_by_reason(hw, IEEE80211_MAX_QUEUE_MAP,
     IEEE80211_QUEUE_STOP_REASON_DRIVER);
}
