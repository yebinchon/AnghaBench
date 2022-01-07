
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int weight; } ;
struct sched_entity {scalar_t__ sum_exec_runtime; scalar_t__ prev_sum_exec_runtime; int slice_max; TYPE_1__ load; scalar_t__ on_rq; } ;
struct cfs_rq {struct sched_entity* curr; } ;
struct TYPE_5__ {int weight; } ;
struct TYPE_6__ {TYPE_2__ load; } ;


 int __dequeue_entity (struct cfs_rq*,struct sched_entity*) ;
 int max (int ,scalar_t__) ;
 TYPE_3__* rq_of (struct cfs_rq*) ;
 int update_stats_curr_start (struct cfs_rq*,struct sched_entity*) ;
 int update_stats_wait_end (struct cfs_rq*,struct sched_entity*) ;

__attribute__((used)) static void
set_next_entity(struct cfs_rq *cfs_rq, struct sched_entity *se)
{

 if (se->on_rq) {





  update_stats_wait_end(cfs_rq, se);
  __dequeue_entity(cfs_rq, se);
 }

 update_stats_curr_start(cfs_rq, se);
 cfs_rq->curr = se;
 se->prev_sum_exec_runtime = se->sum_exec_runtime;
}
