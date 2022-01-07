
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int on_rq; int vruntime; } ;
struct cfs_rq {int nr_running; struct sched_entity* curr; scalar_t__ min_vruntime; } ;


 int ENQUEUE_WAKEUP ;
 int ENQUEUE_WAKING ;
 int __enqueue_entity (struct cfs_rq*,struct sched_entity*) ;
 int account_entity_enqueue (struct cfs_rq*,struct sched_entity*) ;
 int check_enqueue_throttle (struct cfs_rq*) ;
 int check_spread (struct cfs_rq*,struct sched_entity*) ;
 int enqueue_sleeper (struct cfs_rq*,struct sched_entity*) ;
 int list_add_leaf_cfs_rq (struct cfs_rq*) ;
 int place_entity (struct cfs_rq*,struct sched_entity*,int ) ;
 int update_cfs_load (struct cfs_rq*,int ) ;
 int update_cfs_shares (struct cfs_rq*) ;
 int update_curr (struct cfs_rq*) ;
 int update_stats_enqueue (struct cfs_rq*,struct sched_entity*) ;

__attribute__((used)) static void
enqueue_entity(struct cfs_rq *cfs_rq, struct sched_entity *se, int flags)
{




 if (!(flags & ENQUEUE_WAKEUP) || (flags & ENQUEUE_WAKING))
  se->vruntime += cfs_rq->min_vruntime;




 update_curr(cfs_rq);
 update_cfs_load(cfs_rq, 0);
 account_entity_enqueue(cfs_rq, se);
 update_cfs_shares(cfs_rq);

 if (flags & ENQUEUE_WAKEUP) {
  place_entity(cfs_rq, se, 0);
  enqueue_sleeper(cfs_rq, se);
 }

 update_stats_enqueue(cfs_rq, se);
 check_spread(cfs_rq, se);
 if (se != cfs_rq->curr)
  __enqueue_entity(cfs_rq, se);
 se->on_rq = 1;

 if (cfs_rq->nr_running == 1) {
  list_add_leaf_cfs_rq(cfs_rq);
  check_enqueue_throttle(cfs_rq);
 }
}
