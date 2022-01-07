
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct sched_entity {int dummy; } ;
struct cfs_rq {int nr_running; } ;
struct rq {struct cfs_rq cfs; } ;


 struct cfs_rq* group_cfs_rq (struct sched_entity*) ;
 int hrtick_start_fair (struct rq*,struct task_struct*) ;
 struct sched_entity* pick_next_entity (struct cfs_rq*) ;
 int set_next_entity (struct cfs_rq*,struct sched_entity*) ;
 struct task_struct* task_of (struct sched_entity*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct task_struct *pick_next_task_fair(struct rq *rq)
{
 struct task_struct *p;
 struct cfs_rq *cfs_rq = &rq->cfs;
 struct sched_entity *se;

 if (unlikely(!cfs_rq->nr_running))
  return ((void*)0);

 do {
  se = pick_next_entity(cfs_rq);
  set_next_entity(cfs_rq, se);
  cfs_rq = group_cfs_rq(se);
 } while (cfs_rq);

 p = task_of(se);
 hrtick_start_fair(rq, p);

 return p;
}
