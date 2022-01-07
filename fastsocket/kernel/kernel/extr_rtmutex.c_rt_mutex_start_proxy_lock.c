
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rt_mutex_waiter {int task; } ;
struct rt_mutex {int wait_lock; } ;


 int debug_rt_mutex_lock (struct rt_mutex*) ;
 int debug_rt_mutex_print_deadlock (struct rt_mutex_waiter*) ;
 int mark_rt_mutex_waiters (struct rt_mutex*) ;
 int rt_mutex_deadlock_account_lock (struct rt_mutex*,struct task_struct*) ;
 int rt_mutex_owner (struct rt_mutex*) ;
 int rt_mutex_set_owner (struct rt_mutex*,struct task_struct*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int task_blocks_on_rt_mutex (struct rt_mutex*,struct rt_mutex_waiter*,struct task_struct*,int) ;
 scalar_t__ try_to_steal_lock (struct rt_mutex*,struct task_struct*) ;

int rt_mutex_start_proxy_lock(struct rt_mutex *lock,
         struct rt_mutex_waiter *waiter,
         struct task_struct *task, int detect_deadlock)
{
 int ret;

 spin_lock(&lock->wait_lock);

 mark_rt_mutex_waiters(lock);

 if (!rt_mutex_owner(lock) || try_to_steal_lock(lock, task)) {

  debug_rt_mutex_lock(lock);
  rt_mutex_set_owner(lock, task, 0);
  spin_unlock(&lock->wait_lock);
  rt_mutex_deadlock_account_lock(lock, task);
  return 1;
 }

 ret = task_blocks_on_rt_mutex(lock, waiter, task, detect_deadlock);

 if (ret && !waiter->task) {






  ret = 0;
 }
 spin_unlock(&lock->wait_lock);

 debug_rt_mutex_print_deadlock(waiter);

 return ret;
}
