
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_mutex {int dummy; } ;
struct hrtimer_sleeper {int dummy; } ;


 int TASK_INTERRUPTIBLE ;
 int might_sleep () ;
 int rt_mutex_slowlock ;
 int rt_mutex_timed_fastlock (struct rt_mutex*,int ,struct hrtimer_sleeper*,int,int ) ;

int
rt_mutex_timed_lock(struct rt_mutex *lock, struct hrtimer_sleeper *timeout,
      int detect_deadlock)
{
 might_sleep();

 return rt_mutex_timed_fastlock(lock, TASK_INTERRUPTIBLE, timeout,
           detect_deadlock, rt_mutex_slowlock);
}
