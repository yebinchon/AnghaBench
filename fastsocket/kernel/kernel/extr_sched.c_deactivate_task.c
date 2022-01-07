
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int nr_uninterruptible; } ;


 int dequeue_task (struct rq*,struct task_struct*,int) ;
 scalar_t__ task_contributes_to_load (struct task_struct*) ;

__attribute__((used)) static void deactivate_task(struct rq *rq, struct task_struct *p, int flags)
{
 if (task_contributes_to_load(p))
  rq->nr_uninterruptible++;

 dequeue_task(rq, p, flags);
}
