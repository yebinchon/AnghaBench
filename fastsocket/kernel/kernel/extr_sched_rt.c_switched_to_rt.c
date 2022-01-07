
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {scalar_t__ prio; } ;
struct TYPE_3__ {scalar_t__ overloaded; } ;
struct rq {TYPE_2__* curr; TYPE_1__ rt; } ;
struct TYPE_4__ {scalar_t__ prio; } ;


 scalar_t__ push_rt_task (struct rq*) ;
 int resched_task (TYPE_2__*) ;
 struct rq* task_rq (struct task_struct*) ;

__attribute__((used)) static void switched_to_rt(struct rq *rq, struct task_struct *p,
      int running)
{
 int check_resched = 1;
 if (!running) {






  if (check_resched && p->prio < rq->curr->prio)
   resched_task(rq->curr);
 }
}
