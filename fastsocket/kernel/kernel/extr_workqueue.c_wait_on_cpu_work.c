
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wq_barrier {int done; } ;
struct work_struct {int dummy; } ;
struct TYPE_2__ {int next; } ;
struct cpu_workqueue_struct {int lock; TYPE_1__ worklist; struct work_struct* current_work; } ;


 int insert_wq_barrier (struct cpu_workqueue_struct*,struct wq_barrier*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void wait_on_cpu_work(struct cpu_workqueue_struct *cwq,
    struct work_struct *work)
{
 struct wq_barrier barr;
 int running = 0;

 spin_lock_irq(&cwq->lock);
 if (unlikely(cwq->current_work == work)) {
  insert_wq_barrier(cwq, &barr, cwq->worklist.next);
  running = 1;
 }
 spin_unlock_irq(&cwq->lock);

 if (unlikely(running))
  wait_for_completion(&barr.done);
}
