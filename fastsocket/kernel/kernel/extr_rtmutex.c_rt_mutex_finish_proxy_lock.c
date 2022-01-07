
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex_waiter {int task; } ;
struct rt_mutex {int wait_lock; } ;
struct hrtimer_sleeper {int dummy; } ;


 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __rt_mutex_slowlock (struct rt_mutex*,int ,struct hrtimer_sleeper*,struct rt_mutex_waiter*,int) ;
 int current ;
 int fixup_rt_mutex_waiters (struct rt_mutex*) ;
 int remove_waiter (struct rt_mutex*,struct rt_mutex_waiter*) ;
 int rt_mutex_adjust_prio (int ) ;
 int set_current_state (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int rt_mutex_finish_proxy_lock(struct rt_mutex *lock,
          struct hrtimer_sleeper *to,
          struct rt_mutex_waiter *waiter,
          int detect_deadlock)
{
 int ret;

 spin_lock(&lock->wait_lock);

 set_current_state(TASK_INTERRUPTIBLE);

 ret = __rt_mutex_slowlock(lock, TASK_INTERRUPTIBLE, to, waiter,
      detect_deadlock);

 set_current_state(TASK_RUNNING);

 if (unlikely(waiter->task))
  remove_waiter(lock, waiter);





 fixup_rt_mutex_waiters(lock);

 spin_unlock(&lock->wait_lock);






 if (unlikely(ret))
  rt_mutex_adjust_prio(current);

 return ret;
}
