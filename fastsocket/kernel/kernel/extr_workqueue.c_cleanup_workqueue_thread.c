
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpu_workqueue_struct {int * thread; TYPE_1__* wq; } ;
struct TYPE_2__ {int lockdep_map; } ;


 int flush_cpu_workqueue (struct cpu_workqueue_struct*) ;
 int kthread_stop (int *) ;
 int lock_map_acquire (int *) ;
 int lock_map_release (int *) ;
 int trace_workqueue_destruction (int *) ;

__attribute__((used)) static void cleanup_workqueue_thread(struct cpu_workqueue_struct *cwq)
{




 if (cwq->thread == ((void*)0))
  return;

 lock_map_acquire(&cwq->wq->lockdep_map);
 lock_map_release(&cwq->wq->lockdep_map);

 flush_cpu_workqueue(cwq);
 trace_workqueue_destruction(cwq->thread);
 kthread_stop(cwq->thread);
 cwq->thread = ((void*)0);
}
