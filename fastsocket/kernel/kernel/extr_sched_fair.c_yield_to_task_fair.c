
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int on_rq; } ;
struct task_struct {struct sched_entity se; } ;
struct rq {int dummy; } ;


 int cfs_rq_of (struct sched_entity*) ;
 int set_next_buddy (struct sched_entity*) ;
 scalar_t__ throttled_hierarchy (int ) ;
 int yield_task_fair (struct rq*) ;

__attribute__((used)) static bool yield_to_task_fair(struct rq *rq, struct task_struct *p, bool preempt)
{
 struct sched_entity *se = &p->se;


 if (!se->on_rq || throttled_hierarchy(cfs_rq_of(se)))
  return 0;


 set_next_buddy(se);

 yield_task_fair(rq);

 return 1;
}
