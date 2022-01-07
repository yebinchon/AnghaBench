
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_workqueue_struct {int more_work; int worklist; TYPE_1__* wq; } ;
struct TYPE_2__ {scalar_t__ freezeable; } ;


 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 int freezing (int ) ;
 scalar_t__ kthread_should_stop () ;
 scalar_t__ list_empty (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int run_workqueue (struct cpu_workqueue_struct*) ;
 int schedule () ;
 int set_freezable () ;
 int try_to_freeze () ;
 int wait ;

__attribute__((used)) static int worker_thread(void *__cwq)
{
 struct cpu_workqueue_struct *cwq = __cwq;
 DEFINE_WAIT(wait);

 if (cwq->wq->freezeable)
  set_freezable();

 for (;;) {
  prepare_to_wait(&cwq->more_work, &wait, TASK_INTERRUPTIBLE);
  if (!freezing(current) &&
      !kthread_should_stop() &&
      list_empty(&cwq->worklist))
   schedule();
  finish_wait(&cwq->more_work, &wait);

  try_to_freeze();

  if (kthread_should_stop())
   break;

  run_workqueue(cwq);
 }

 return 0;
}
