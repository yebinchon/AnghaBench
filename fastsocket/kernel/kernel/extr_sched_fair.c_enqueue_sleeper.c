
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct task_struct {scalar_t__ in_iowait; } ;
struct sched_entity {int sleep_start; int sleep_max; int sum_sleep_runtime; int block_start; int block_max; int iowait_sum; int iowait_count; } ;
struct cfs_rq {int dummy; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {int clock; } ;


 scalar_t__ SLEEP_PROFILING ;
 int account_scheduler_latency (struct task_struct*,int,int) ;
 scalar_t__ entity_is_task (struct sched_entity*) ;
 scalar_t__ get_wchan (struct task_struct*) ;
 scalar_t__ prof_on ;
 int profile_hits (scalar_t__,void*,int) ;
 TYPE_1__* rq_of (struct cfs_rq*) ;
 struct task_struct* task_of (struct sched_entity*) ;
 int trace_sched_stat_blocked (struct task_struct*,int) ;
 int trace_sched_stat_iowait (struct task_struct*,int) ;
 int trace_sched_stat_sleep (struct task_struct*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void enqueue_sleeper(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
}
