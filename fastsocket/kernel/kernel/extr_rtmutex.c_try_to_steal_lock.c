
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ prio; int pi_lock; int pi_waiters; } ;
struct rt_mutex_waiter {int pi_list_entry; struct task_struct* task; } ;
struct rt_mutex {int dummy; } ;


 int __rt_mutex_adjust_prio (struct task_struct*) ;
 scalar_t__ likely (int) ;
 int plist_add (int *,int *) ;
 int plist_del (int *,int *) ;
 int rt_mutex_has_waiters (struct rt_mutex*) ;
 struct task_struct* rt_mutex_owner (struct rt_mutex*) ;
 int rt_mutex_owner_pending (struct rt_mutex*) ;
 struct rt_mutex_waiter* rt_mutex_top_waiter (struct rt_mutex*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int try_to_steal_lock(struct rt_mutex *lock,
        struct task_struct *task)
{
 struct task_struct *pendowner = rt_mutex_owner(lock);
 struct rt_mutex_waiter *next;
 unsigned long flags;

 if (!rt_mutex_owner_pending(lock))
  return 0;

 if (pendowner == task)
  return 1;

 spin_lock_irqsave(&pendowner->pi_lock, flags);
 if (task->prio >= pendowner->prio) {
  spin_unlock_irqrestore(&pendowner->pi_lock, flags);
  return 0;
 }






 if (likely(!rt_mutex_has_waiters(lock))) {
  spin_unlock_irqrestore(&pendowner->pi_lock, flags);
  return 1;
 }


 next = rt_mutex_top_waiter(lock);
 plist_del(&next->pi_list_entry, &pendowner->pi_waiters);
 __rt_mutex_adjust_prio(pendowner);
 spin_unlock_irqrestore(&pendowner->pi_lock, flags);
 if (likely(next->task != task)) {
  spin_lock_irqsave(&task->pi_lock, flags);
  plist_add(&next->pi_list_entry, &task->pi_waiters);
  __rt_mutex_adjust_prio(task);
  spin_unlock_irqrestore(&task->pi_lock, flags);
 }
 return 1;
}
