
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_entity {unsigned long sum_exec_runtime; unsigned long prev_sum_exec_runtime; unsigned long vruntime; } ;
struct cfs_rq {int nr_running; } ;
typedef unsigned long s64 ;
struct TYPE_2__ {int curr; } ;


 int WAKEUP_PREEMPT ;
 struct sched_entity* __pick_first_entity (struct cfs_rq*) ;
 int clear_buddies (struct cfs_rq*,struct sched_entity*) ;
 int resched_task (int ) ;
 TYPE_1__* rq_of (struct cfs_rq*) ;
 int sched_feat (int ) ;
 unsigned long sched_slice (struct cfs_rq*,struct sched_entity*) ;
 unsigned long sysctl_sched_min_granularity ;

__attribute__((used)) static void
check_preempt_tick(struct cfs_rq *cfs_rq, struct sched_entity *curr)
{
 unsigned long ideal_runtime, delta_exec;

 ideal_runtime = sched_slice(cfs_rq, curr);
 delta_exec = curr->sum_exec_runtime - curr->prev_sum_exec_runtime;
 if (delta_exec > ideal_runtime) {
  resched_task(rq_of(cfs_rq)->curr);




  clear_buddies(cfs_rq, curr);
  return;
 }






 if (!sched_feat(WAKEUP_PREEMPT))
  return;

 if (delta_exec < sysctl_sched_min_granularity)
  return;

 if (cfs_rq->nr_running > 1) {
  struct sched_entity *se = __pick_first_entity(cfs_rq);
  s64 delta = curr->vruntime - se->vruntime;

  if (delta < 0)
   return;

  if (delta > ideal_runtime)
   resched_task(rq_of(cfs_rq)->curr);
 }
}
