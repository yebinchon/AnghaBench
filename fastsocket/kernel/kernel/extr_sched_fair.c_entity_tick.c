
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_entity {int dummy; } ;
struct cfs_rq {int nr_running; } ;
struct TYPE_2__ {int hrtick_timer; int curr; } ;


 int DOUBLE_TICK ;
 int WAKEUP_PREEMPT ;
 int check_preempt_tick (struct cfs_rq*,struct sched_entity*) ;
 scalar_t__ hrtimer_active (int *) ;
 int resched_task (int ) ;
 TYPE_1__* rq_of (struct cfs_rq*) ;
 int sched_feat (int ) ;
 int update_curr (struct cfs_rq*) ;
 int update_entity_shares_tick (struct cfs_rq*) ;

__attribute__((used)) static void
entity_tick(struct cfs_rq *cfs_rq, struct sched_entity *curr, int queued)
{



 update_curr(cfs_rq);




 update_entity_shares_tick(cfs_rq);
 if (cfs_rq->nr_running > 1 || !sched_feat(WAKEUP_PREEMPT))
  check_preempt_tick(cfs_rq, curr);
}
