
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wq_barrier {int done; } ;
struct list_head {int next; } ;
struct work_struct {struct list_head entry; } ;
struct cpu_workqueue_struct {int lock; struct list_head worklist; struct work_struct* current_work; TYPE_1__* wq; } ;
struct TYPE_2__ {int lockdep_map; } ;


 struct cpu_workqueue_struct* get_wq_data (struct work_struct*) ;
 int insert_wq_barrier (struct cpu_workqueue_struct*,struct wq_barrier*,int ) ;
 int list_empty (struct list_head*) ;
 int lock_map_acquire (int *) ;
 int lock_map_release (int *) ;
 int might_sleep () ;
 int smp_rmb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;
 int wait_for_completion (int *) ;

int flush_work(struct work_struct *work)
{
 struct cpu_workqueue_struct *cwq;
 struct list_head *prev;
 struct wq_barrier barr;

 might_sleep();
 cwq = get_wq_data(work);
 if (!cwq)
  return 0;

 lock_map_acquire(&cwq->wq->lockdep_map);
 lock_map_release(&cwq->wq->lockdep_map);

 prev = ((void*)0);
 spin_lock_irq(&cwq->lock);
 if (!list_empty(&work->entry)) {




  smp_rmb();
  if (unlikely(cwq != get_wq_data(work)))
   goto out;
  prev = &work->entry;
 } else {
  if (cwq->current_work != work)
   goto out;
  prev = &cwq->worklist;
 }
 insert_wq_barrier(cwq, &barr, prev->next);
out:
 spin_unlock_irq(&cwq->lock);
 if (!prev)
  return 0;

 wait_for_completion(&barr.done);
 return 1;
}
