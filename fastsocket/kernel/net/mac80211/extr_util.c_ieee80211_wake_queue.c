
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int IEEE80211_QUEUE_STOP_REASON_DRIVER ;
 int ieee80211_wake_queue_by_reason (struct ieee80211_hw*,int,int ) ;

void ieee80211_wake_queue(struct ieee80211_hw *hw, int queue)
{
 ieee80211_wake_queue_by_reason(hw, queue,
           IEEE80211_QUEUE_STOP_REASON_DRIVER);
}
