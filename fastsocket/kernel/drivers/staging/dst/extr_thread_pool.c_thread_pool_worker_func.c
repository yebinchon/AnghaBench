
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_pool_worker {int schedule_data; int private; int (* action ) (int ,int ) ;scalar_t__ has_data; int wait; } ;


 scalar_t__ kthread_should_stop () ;
 int stub1 (int ,int ) ;
 int thread_pool_worker_make_ready (struct thread_pool_worker*) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int thread_pool_worker_func(void *data)
{
 struct thread_pool_worker *w = data;

 while (!kthread_should_stop()) {
  wait_event_interruptible(w->wait,
   kthread_should_stop() || w->has_data);

  if (kthread_should_stop())
   break;

  if (!w->has_data)
   continue;

  w->action(w->private, w->schedule_data);
  thread_pool_worker_make_ready(w);
 }

 return 0;
}
