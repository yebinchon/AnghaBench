
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exec_start; } ;
struct task_struct {TYPE_1__ se; } ;
struct rq {int clock; struct task_struct* curr; } ;


 int dequeue_pushable_task (struct rq*,struct task_struct*) ;

__attribute__((used)) static void set_curr_task_rt(struct rq *rq)
{
 struct task_struct *p = rq->curr;

 p->se.exec_start = rq->clock;


 dequeue_pushable_task(rq, p);
}
