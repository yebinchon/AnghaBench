
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_master {int refcnt; scalar_t__ search_count; int mutex; } ;


 int TASK_INTERRUPTIBLE ;
 int W1_SEARCH ;
 int __set_current_state (int ) ;
 int atomic_dec (int *) ;
 scalar_t__ kthread_should_stop () ;
 unsigned long msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule () ;
 int schedule_timeout (unsigned long const) ;
 int try_to_freeze () ;
 int w1_search_process (struct w1_master*,int ) ;
 int w1_timeout ;

int w1_process(void *data)
{
 struct w1_master *dev = (struct w1_master *) data;



 const unsigned long jtime = msecs_to_jiffies(w1_timeout * 1000);

 while (!kthread_should_stop()) {
  if (dev->search_count) {
   mutex_lock(&dev->mutex);
   w1_search_process(dev, W1_SEARCH);
   mutex_unlock(&dev->mutex);
  }

  try_to_freeze();
  __set_current_state(TASK_INTERRUPTIBLE);

  if (kthread_should_stop())
   break;


  if (dev->search_count)
   schedule_timeout(jtime);
  else
   schedule();
 }

 atomic_dec(&dev->refcnt);

 return 0;
}
