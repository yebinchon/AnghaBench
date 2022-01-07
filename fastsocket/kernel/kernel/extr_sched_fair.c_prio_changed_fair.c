
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int prio; } ;
struct rq {int curr; } ;


 int check_preempt_curr (struct rq*,struct task_struct*,int ) ;
 int resched_task (int ) ;

__attribute__((used)) static void prio_changed_fair(struct rq *rq, struct task_struct *p,
         int oldprio, int running)
{





 if (running) {
  if (p->prio > oldprio)
   resched_task(rq->curr);
 } else
  check_preempt_curr(rq, p, 0);
}
