
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_cpus_allowed; } ;
struct TYPE_3__ {scalar_t__ on_rq; scalar_t__ exec_start; } ;
struct task_struct {TYPE_2__ rt; TYPE_1__ se; } ;
struct rq {int dummy; } ;


 int enqueue_pushable_task (struct rq*,struct task_struct*) ;
 int update_curr_rt (struct rq*) ;

__attribute__((used)) static void put_prev_task_rt(struct rq *rq, struct task_struct *p)
{
 update_curr_rt(rq);
 p->se.exec_start = 0;





 if (p->se.on_rq && p->rt.nr_cpus_allowed > 1)
  enqueue_pushable_task(rq, p);
}
