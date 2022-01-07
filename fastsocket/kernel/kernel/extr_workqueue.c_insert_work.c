
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int entry; } ;
struct list_head {int dummy; } ;
struct cpu_workqueue_struct {int more_work; int thread; } ;


 int list_add_tail (int *,struct list_head*) ;
 int set_wq_data (struct work_struct*,struct cpu_workqueue_struct*) ;
 int smp_wmb () ;
 int trace_workqueue_insertion (int ,struct work_struct*) ;
 int wake_up (int *) ;

__attribute__((used)) static void insert_work(struct cpu_workqueue_struct *cwq,
   struct work_struct *work, struct list_head *head)
{
 trace_workqueue_insertion(cwq->thread, work);

 set_wq_data(work, cwq);




 smp_wmb();
 list_add_tail(&work->entry, head);
 wake_up(&cwq->more_work);
}
