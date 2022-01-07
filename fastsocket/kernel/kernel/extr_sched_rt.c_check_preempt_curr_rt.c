
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {scalar_t__ prio; } ;
struct rq {TYPE_1__* curr; } ;
struct TYPE_2__ {scalar_t__ prio; } ;


 int check_preempt_equal_prio (struct rq*,struct task_struct*) ;
 int need_resched () ;
 int resched_task (TYPE_1__*) ;

__attribute__((used)) static void check_preempt_curr_rt(struct rq *rq, struct task_struct *p, int flags)
{
 if (p->prio < rq->curr->prio) {
  resched_task(rq->curr);
  return;
 }
}
