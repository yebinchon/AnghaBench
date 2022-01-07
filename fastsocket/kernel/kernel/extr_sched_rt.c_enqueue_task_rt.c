
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int nr_cpus_allowed; scalar_t__ timeout; } ;
struct task_struct {struct sched_rt_entity rt; } ;
struct rq {int dummy; } ;


 int ENQUEUE_HEAD ;
 int ENQUEUE_WAKEUP ;
 int enqueue_pushable_task (struct rq*,struct task_struct*) ;
 int enqueue_rt_entity (struct sched_rt_entity*,int) ;
 int inc_nr_running (struct rq*) ;
 int task_current (struct rq*,struct task_struct*) ;

__attribute__((used)) static void
enqueue_task_rt(struct rq *rq, struct task_struct *p, int flags)
{
 struct sched_rt_entity *rt_se = &p->rt;

 if (flags & ENQUEUE_WAKEUP)
  rt_se->timeout = 0;

 enqueue_rt_entity(rt_se, flags & ENQUEUE_HEAD);

 if (!task_current(rq, p) && p->rt.nr_cpus_allowed > 1)
  enqueue_pushable_task(rq, p);

 inc_nr_running(rq);
}
