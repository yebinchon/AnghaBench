
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int dummy; } ;
struct cfs_rq {struct sched_entity* curr; } ;


 int update_stats_wait_start (struct cfs_rq*,struct sched_entity*) ;

__attribute__((used)) static void update_stats_enqueue(struct cfs_rq *cfs_rq, struct sched_entity *se)
{




 if (se != cfs_rq->curr)
  update_stats_wait_start(cfs_rq, se);
}
