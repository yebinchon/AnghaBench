
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int on_rq; } ;
struct task_struct {int policy; int rt_priority; int prio; int normal_prio; int * sched_class; TYPE_1__ se; } ;
struct rq {int dummy; } ;


 int BUG_ON (int ) ;





 int fair_sched_class ;
 int normal_prio (struct task_struct*) ;
 int rt_mutex_getprio (struct task_struct*) ;
 int rt_sched_class ;
 int set_load_weight (struct task_struct*) ;

__attribute__((used)) static void
__setscheduler(struct rq *rq, struct task_struct *p, int policy, int prio)
{
 BUG_ON(p->se.on_rq);

 p->policy = policy;
 switch (p->policy) {
 case 129:
 case 132:
 case 130:
  p->sched_class = &fair_sched_class;
  break;
 case 131:
 case 128:
  p->sched_class = &rt_sched_class;
  break;
 }

 p->rt_priority = prio;
 p->normal_prio = normal_prio(p);

 p->prio = rt_mutex_getprio(p);
 set_load_weight(p);
}
