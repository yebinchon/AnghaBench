
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {scalar_t__* queue_stop_reasons; int tx_pending_tasklet; int * pending; } ;
struct ieee80211_hw {int queues; } ;
typedef enum queue_stop_reason { ____Placeholder_queue_stop_reason } queue_stop_reason ;


 scalar_t__ WARN_ON (int) ;
 int __clear_bit (int,scalar_t__*) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_propagate_queue_wake (struct ieee80211_local*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ skb_queue_empty (int *) ;
 int tasklet_schedule (int *) ;
 int test_bit (int,scalar_t__*) ;
 int trace_wake_queue (struct ieee80211_local*,int,int) ;

__attribute__((used)) static void __ieee80211_wake_queue(struct ieee80211_hw *hw, int queue,
       enum queue_stop_reason reason)
{
 struct ieee80211_local *local = hw_to_local(hw);

 trace_wake_queue(local, queue, reason);

 if (WARN_ON(queue >= hw->queues))
  return;

 if (!test_bit(reason, &local->queue_stop_reasons[queue]))
  return;

 __clear_bit(reason, &local->queue_stop_reasons[queue]);

 if (local->queue_stop_reasons[queue] != 0)

  return;

 if (skb_queue_empty(&local->pending[queue])) {
  rcu_read_lock();
  ieee80211_propagate_queue_wake(local, queue);
  rcu_read_unlock();
 } else
  tasklet_schedule(&local->tx_pending_tasklet);
}
