
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int cpu_wq; } ;
struct cpu_workqueue_struct {int more_work; int worklist; int lock; struct workqueue_struct* wq; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_waitqueue_head (int *) ;
 struct cpu_workqueue_struct* per_cpu_ptr (int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct cpu_workqueue_struct *
init_cpu_workqueue(struct workqueue_struct *wq, int cpu)
{
 struct cpu_workqueue_struct *cwq = per_cpu_ptr(wq->cpu_wq, cpu);

 cwq->wq = wq;
 spin_lock_init(&cwq->lock);
 INIT_LIST_HEAD(&cwq->worklist);
 init_waitqueue_head(&cwq->more_work);

 return cwq;
}
