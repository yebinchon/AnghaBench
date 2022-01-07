
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pi_lock; int * pi_blocked_on; int pi_waiters; } ;
struct rt_mutex_waiter {int pi_list_entry; int * task; int list_entry; } ;
struct rt_mutex {int wait_lock; int wait_list; } ;


 int WARN_ON (int) ;
 int __rt_mutex_adjust_prio (struct task_struct*) ;
 struct task_struct* current ;
 int get_task_struct (struct task_struct*) ;
 int plist_add (int *,int *) ;
 int plist_del (int *,int *) ;
 int plist_node_empty (int *) ;
 int rt_mutex_adjust_prio_chain (struct task_struct*,int ,struct rt_mutex*,int *,struct task_struct*) ;
 scalar_t__ rt_mutex_has_waiters (struct rt_mutex*) ;
 struct task_struct* rt_mutex_owner (struct rt_mutex*) ;
 struct rt_mutex_waiter* rt_mutex_top_waiter (struct rt_mutex*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void remove_waiter(struct rt_mutex *lock,
     struct rt_mutex_waiter *waiter)
{
 int first = (waiter == rt_mutex_top_waiter(lock));
 struct task_struct *owner = rt_mutex_owner(lock);
 unsigned long flags;
 int chain_walk = 0;

 spin_lock_irqsave(&current->pi_lock, flags);
 plist_del(&waiter->list_entry, &lock->wait_list);
 waiter->task = ((void*)0);
 current->pi_blocked_on = ((void*)0);
 spin_unlock_irqrestore(&current->pi_lock, flags);

 if (first && owner != current) {

  spin_lock_irqsave(&owner->pi_lock, flags);

  plist_del(&waiter->pi_list_entry, &owner->pi_waiters);

  if (rt_mutex_has_waiters(lock)) {
   struct rt_mutex_waiter *next;

   next = rt_mutex_top_waiter(lock);
   plist_add(&next->pi_list_entry, &owner->pi_waiters);
  }
  __rt_mutex_adjust_prio(owner);

  if (owner->pi_blocked_on)
   chain_walk = 1;

  spin_unlock_irqrestore(&owner->pi_lock, flags);
 }

 WARN_ON(!plist_node_empty(&waiter->pi_list_entry));

 if (!chain_walk)
  return;


 get_task_struct(owner);

 spin_unlock(&lock->wait_lock);

 rt_mutex_adjust_prio_chain(owner, 0, lock, ((void*)0), current);

 spin_lock(&lock->wait_lock);
}
