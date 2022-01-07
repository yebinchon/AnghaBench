
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct cpu_workqueue_struct {int lock; int worklist; } ;


 int insert_work (struct cpu_workqueue_struct*,struct work_struct*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __queue_work(struct cpu_workqueue_struct *cwq,
    struct work_struct *work)
{
 unsigned long flags;

 spin_lock_irqsave(&cwq->lock, flags);
 insert_work(cwq, work, &cwq->worklist);
 spin_unlock_irqrestore(&cwq->lock, flags);
}
