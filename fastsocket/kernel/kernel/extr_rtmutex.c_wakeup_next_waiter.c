
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int pi_lock; int pi_waiters; struct rt_mutex_waiter* pi_blocked_on; } ;
struct rt_mutex_waiter {int pi_list_entry; struct rt_mutex* lock; struct task_struct* task; int list_entry; } ;
struct rt_mutex {int wait_list; } ;
struct TYPE_2__ {int pi_lock; int pi_waiters; } ;


 int RT_MUTEX_OWNER_PENDING ;
 int WARN_ON (int) ;
 TYPE_1__* current ;
 int plist_add (int *,int *) ;
 int plist_del (int *,int *) ;
 scalar_t__ rt_mutex_has_waiters (struct rt_mutex*) ;
 int rt_mutex_set_owner (struct rt_mutex*,struct task_struct*,int ) ;
 struct rt_mutex_waiter* rt_mutex_top_waiter (struct rt_mutex*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (struct task_struct*) ;

__attribute__((used)) static void wakeup_next_waiter(struct rt_mutex *lock)
{
 struct rt_mutex_waiter *waiter;
 struct task_struct *pendowner;
 unsigned long flags;

 spin_lock_irqsave(&current->pi_lock, flags);

 waiter = rt_mutex_top_waiter(lock);
 plist_del(&waiter->list_entry, &lock->wait_list);







 plist_del(&waiter->pi_list_entry, &current->pi_waiters);
 pendowner = waiter->task;
 waiter->task = ((void*)0);

 rt_mutex_set_owner(lock, pendowner, RT_MUTEX_OWNER_PENDING);

 spin_unlock_irqrestore(&current->pi_lock, flags);
 spin_lock_irqsave(&pendowner->pi_lock, flags);

 WARN_ON(!pendowner->pi_blocked_on);
 WARN_ON(pendowner->pi_blocked_on != waiter);
 WARN_ON(pendowner->pi_blocked_on->lock != lock);

 pendowner->pi_blocked_on = ((void*)0);

 if (rt_mutex_has_waiters(lock)) {
  struct rt_mutex_waiter *next;

  next = rt_mutex_top_waiter(lock);
  plist_add(&next->pi_list_entry, &pendowner->pi_waiters);
 }
 spin_unlock_irqrestore(&pendowner->pi_lock, flags);

 wake_up_process(pendowner);
}
