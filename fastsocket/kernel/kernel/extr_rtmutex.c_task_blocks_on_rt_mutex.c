
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pi_lock; struct rt_mutex_waiter* pi_blocked_on; int pi_waiters; int prio; } ;
struct rt_mutex_waiter {int pi_list_entry; int list_entry; struct rt_mutex* lock; struct task_struct* task; } ;
struct rt_mutex {int wait_lock; int wait_list; } ;


 int __rt_mutex_adjust_prio (struct task_struct*) ;
 scalar_t__ debug_rt_mutex_detect_deadlock (struct rt_mutex_waiter*,int) ;
 int get_task_struct (struct task_struct*) ;
 int plist_add (int *,int *) ;
 int plist_del (int *,int *) ;
 int plist_node_init (int *,int ) ;
 int rt_mutex_adjust_prio_chain (struct task_struct*,int,struct rt_mutex*,struct rt_mutex_waiter*,struct task_struct*) ;
 scalar_t__ rt_mutex_has_waiters (struct rt_mutex*) ;
 struct task_struct* rt_mutex_owner (struct rt_mutex*) ;
 struct rt_mutex_waiter* rt_mutex_top_waiter (struct rt_mutex*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int task_blocks_on_rt_mutex(struct rt_mutex *lock,
       struct rt_mutex_waiter *waiter,
       struct task_struct *task,
       int detect_deadlock)
{
 struct task_struct *owner = rt_mutex_owner(lock);
 struct rt_mutex_waiter *top_waiter = waiter;
 unsigned long flags;
 int chain_walk = 0, res;

 spin_lock_irqsave(&task->pi_lock, flags);
 __rt_mutex_adjust_prio(task);
 waiter->task = task;
 waiter->lock = lock;
 plist_node_init(&waiter->list_entry, task->prio);
 plist_node_init(&waiter->pi_list_entry, task->prio);


 if (rt_mutex_has_waiters(lock))
  top_waiter = rt_mutex_top_waiter(lock);
 plist_add(&waiter->list_entry, &lock->wait_list);

 task->pi_blocked_on = waiter;

 spin_unlock_irqrestore(&task->pi_lock, flags);

 if (waiter == rt_mutex_top_waiter(lock)) {
  spin_lock_irqsave(&owner->pi_lock, flags);
  plist_del(&top_waiter->pi_list_entry, &owner->pi_waiters);
  plist_add(&waiter->pi_list_entry, &owner->pi_waiters);

  __rt_mutex_adjust_prio(owner);
  if (owner->pi_blocked_on)
   chain_walk = 1;
  spin_unlock_irqrestore(&owner->pi_lock, flags);
 }
 else if (debug_rt_mutex_detect_deadlock(waiter, detect_deadlock))
  chain_walk = 1;

 if (!chain_walk)
  return 0;






 get_task_struct(owner);

 spin_unlock(&lock->wait_lock);

 res = rt_mutex_adjust_prio_chain(owner, detect_deadlock, lock, waiter,
      task);

 spin_lock(&lock->wait_lock);

 return res;
}
