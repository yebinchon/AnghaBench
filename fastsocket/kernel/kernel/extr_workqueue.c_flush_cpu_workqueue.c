
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wq_barrier {int done; } ;
struct cpu_workqueue_struct {scalar_t__ thread; int lock; int worklist; int * current_work; } ;


 int WARN_ON (int) ;
 scalar_t__ current ;
 int insert_wq_barrier (struct cpu_workqueue_struct*,struct wq_barrier*,int *) ;
 int list_empty (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int flush_cpu_workqueue(struct cpu_workqueue_struct *cwq)
{
 int active = 0;
 struct wq_barrier barr;

 WARN_ON(cwq->thread == current);

 spin_lock_irq(&cwq->lock);
 if (!list_empty(&cwq->worklist) || cwq->current_work != ((void*)0)) {
  insert_wq_barrier(cwq, &barr, &cwq->worklist);
  active = 1;
 }
 spin_unlock_irq(&cwq->lock);

 if (active)
  wait_for_completion(&barr.done);

 return active;
}
