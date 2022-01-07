
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_entity {scalar_t__ wait_start; scalar_t__ wait_sum; scalar_t__ wait_count; scalar_t__ wait_max; } ;
struct cfs_rq {int dummy; } ;
struct TYPE_2__ {scalar_t__ clock; } ;


 scalar_t__ entity_is_task (struct sched_entity*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 TYPE_1__* rq_of (struct cfs_rq*) ;
 int schedstat_set (scalar_t__,scalar_t__) ;
 int task_of (struct sched_entity*) ;
 int trace_sched_stat_wait (int ,scalar_t__) ;

__attribute__((used)) static void
update_stats_wait_end(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
 schedstat_set(se->wait_max, max(se->wait_max,
   rq_of(cfs_rq)->clock - se->wait_start));
 schedstat_set(se->wait_count, se->wait_count + 1);
 schedstat_set(se->wait_sum, se->wait_sum +
   rq_of(cfs_rq)->clock - se->wait_start);






 schedstat_set(se->wait_start, 0);
}
