
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int state; } ;
struct sched_entity {int vruntime; scalar_t__ on_rq; int block_start; int sleep_start; } ;
struct cfs_rq {int nr_running; scalar_t__ min_vruntime; struct sched_entity* curr; } ;
struct TYPE_2__ {int clock; } ;


 int DEQUEUE_SLEEP ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int __dequeue_entity (struct cfs_rq*,struct sched_entity*) ;
 int account_entity_dequeue (struct cfs_rq*,struct sched_entity*) ;
 int clear_buddies (struct cfs_rq*,struct sched_entity*) ;
 scalar_t__ entity_is_task (struct sched_entity*) ;
 int return_cfs_rq_runtime (struct cfs_rq*) ;
 TYPE_1__* rq_of (struct cfs_rq*) ;
 struct task_struct* task_of (struct sched_entity*) ;
 int update_cfs_load (struct cfs_rq*,int ) ;
 int update_cfs_shares (struct cfs_rq*) ;
 int update_curr (struct cfs_rq*) ;
 int update_min_vruntime (struct cfs_rq*) ;
 int update_stats_dequeue (struct cfs_rq*,struct sched_entity*) ;

__attribute__((used)) static void
dequeue_entity(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{



 update_curr(cfs_rq);

 update_stats_dequeue(cfs_rq, se);
 if (flags & DEQUEUE_SLEEP) {
 }

 clear_buddies(cfs_rq, se);

 if (se != cfs_rq->curr)
  __dequeue_entity(cfs_rq, se);
 se->on_rq = 0;
 update_cfs_load(cfs_rq, 0);
 account_entity_dequeue(cfs_rq, se);






 if (!(flags & DEQUEUE_SLEEP))
  se->vruntime -= cfs_rq->min_vruntime;

 update_min_vruntime(cfs_rq);
 update_cfs_shares(cfs_rq);


 if (!cfs_rq->nr_running)
  return_cfs_rq_runtime(cfs_rq);
}
