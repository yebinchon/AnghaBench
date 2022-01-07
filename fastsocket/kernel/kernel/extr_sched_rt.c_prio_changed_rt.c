
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int prio; } ;
struct TYPE_3__ {scalar_t__ curr; } ;
struct TYPE_4__ {TYPE_1__ highest_prio; } ;
struct rq {struct task_struct* curr; TYPE_2__ rt; } ;


 int pull_rt_task (struct rq*) ;
 int resched_task (struct task_struct*) ;

__attribute__((used)) static void prio_changed_rt(struct rq *rq, struct task_struct *p,
       int oldprio, int running)
{
 if (running) {
  if (oldprio < p->prio)
   resched_task(p);

 } else {





  if (p->prio < rq->curr->prio)
   resched_task(rq->curr);
 }
}
