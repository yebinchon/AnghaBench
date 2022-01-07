
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct rq {int curr; } ;


 int check_preempt_curr (struct rq*,struct task_struct*,int ) ;
 int resched_task (int ) ;

__attribute__((used)) static void switched_to_idle(struct rq *rq, struct task_struct *p,
        int running)
{

 if (running)
  resched_task(rq->curr);
 else
  check_preempt_curr(rq, p, 0);
}
