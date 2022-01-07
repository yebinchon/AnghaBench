
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int queue_stop_reason_lock; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum queue_stop_reason { ____Placeholder_queue_stop_reason } queue_stop_reason ;


 int __ieee80211_wake_queue (struct ieee80211_hw*,int,int) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ieee80211_wake_queue_by_reason(struct ieee80211_hw *hw, int queue,
        enum queue_stop_reason reason)
{
 struct ieee80211_local *local = hw_to_local(hw);
 unsigned long flags;

 spin_lock_irqsave(&local->queue_stop_reason_lock, flags);
 __ieee80211_wake_queue(hw, queue, reason);
 spin_unlock_irqrestore(&local->queue_stop_reason_lock, flags);
}
