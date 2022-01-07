
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECLARE_WAITQUEUE (int ,int ) ;
 int HZ ;
 int MAX_THREADS ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int async_new ;
 int async_pending ;
 int atomic_add_unless (int *,int,int ) ;
 int atomic_dec (int *) ;
 int current ;
 int kthread_should_stop () ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ need_resched () ;
 int remove_wait_queue (int *,int *) ;
 int rmb () ;
 int run_one_entry () ;
 int schedule () ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int thread_count ;
 int wmb () ;
 int wq ;

__attribute__((used)) static int async_thread(void *unused)
{
 DECLARE_WAITQUEUE(wq, current);
 add_wait_queue(&async_new, &wq);

 while (!kthread_should_stop()) {
  int ret = HZ;





  rmb();
  if (need_resched())
   schedule();

  if (!list_empty(&async_pending))
   run_one_entry();
  else {
   set_current_state(TASK_INTERRUPTIBLE);
   ret = schedule_timeout(HZ);
  }

  if (ret == 0) {





   atomic_dec(&thread_count);
   wmb();
   if (list_empty(&async_pending))
    break;




   if (!atomic_add_unless(&thread_count, 1, MAX_THREADS))




    break;
  }
 }
 remove_wait_queue(&async_new, &wq);

 return 0;
}
