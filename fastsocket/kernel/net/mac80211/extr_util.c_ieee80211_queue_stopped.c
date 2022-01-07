
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int queue_stop_reason_lock; int * queue_stop_reasons; } ;
struct ieee80211_hw {int queues; } ;


 int IEEE80211_QUEUE_STOP_REASON_DRIVER ;
 scalar_t__ WARN_ON (int) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

int ieee80211_queue_stopped(struct ieee80211_hw *hw, int queue)
{
 struct ieee80211_local *local = hw_to_local(hw);
 unsigned long flags;
 int ret;

 if (WARN_ON(queue >= hw->queues))
  return 1;

 spin_lock_irqsave(&local->queue_stop_reason_lock, flags);
 ret = test_bit(IEEE80211_QUEUE_STOP_REASON_DRIVER,
         &local->queue_stop_reasons[queue]);
 spin_unlock_irqrestore(&local->queue_stop_reason_lock, flags);
 return ret;
}
