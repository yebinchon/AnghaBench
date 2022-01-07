
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DECLARE_WAITQUEUE (int ,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_THREADS ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int async_new ;
 int async_thread ;
 int atomic_add_unless (int *,int,int) ;
 int atomic_read (int *) ;
 int current ;
 int entry_count ;
 int kthread_run (int ,int *,char*,int) ;
 int kthread_should_stop () ;
 int msleep (int) ;
 int remove_wait_queue (int *,int *) ;
 int rmb () ;
 int schedule () ;
 int set_current_state (int ) ;
 int thread_count ;
 int wq ;

__attribute__((used)) static int async_manager_thread(void *unused)
{
 DECLARE_WAITQUEUE(wq, current);
 add_wait_queue(&async_new, &wq);

 while (!kthread_should_stop()) {
  int tc, ec;

  set_current_state(TASK_INTERRUPTIBLE);

  tc = atomic_read(&thread_count);
  rmb();
  ec = atomic_read(&entry_count);

  while (tc < ec && tc < MAX_THREADS) {
   if (IS_ERR(kthread_run(async_thread, ((void*)0), "async/%i",
            tc))) {
    msleep(100);
    continue;
   }
   if (!atomic_add_unless(&thread_count, 1, MAX_THREADS))



    break;
   tc++;
  }

  schedule();
 }
 remove_wait_queue(&async_new, &wq);

 return 0;
}
