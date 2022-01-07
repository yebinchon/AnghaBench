
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sched_entity {unsigned long sum_exec_runtime; unsigned long vruntime; int exec_max; } ;
struct cfs_rq {unsigned long load_unacc_exec_time; } ;


 unsigned long calc_delta_fair (unsigned long,struct sched_entity*) ;
 int exec_clock ;
 int max (int ,int ) ;
 int schedstat_add (struct cfs_rq*,int ,unsigned long) ;
 int schedstat_set (int ,int ) ;
 int update_min_vruntime (struct cfs_rq*) ;

__attribute__((used)) static inline void
__update_curr(struct cfs_rq *cfs_rq, struct sched_entity *curr,
       unsigned long delta_exec)
{
 unsigned long delta_exec_weighted;

 schedstat_set(curr->exec_max, max((u64)delta_exec, curr->exec_max));

 curr->sum_exec_runtime += delta_exec;
 schedstat_add(cfs_rq, exec_clock, delta_exec);
 delta_exec_weighted = calc_delta_fair(delta_exec, curr);

 curr->vruntime += delta_exec_weighted;
 update_min_vruntime(cfs_rq);




}
