
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int dummy; } ;
struct task_struct {scalar_t__ policy; struct sched_entity se; } ;
struct rq {int nr_running; struct task_struct* curr; } ;
struct cfs_rq {int dummy; } ;


 scalar_t__ SCHED_BATCH ;
 int clear_buddies (struct cfs_rq*,struct sched_entity*) ;
 int set_skip_buddy (struct sched_entity*) ;
 struct cfs_rq* task_cfs_rq (struct task_struct*) ;
 scalar_t__ unlikely (int) ;
 int update_curr (struct cfs_rq*) ;
 int update_rq_clock (struct rq*) ;

__attribute__((used)) static void yield_task_fair(struct rq *rq)
{
 struct task_struct *curr = rq->curr;
 struct cfs_rq *cfs_rq = task_cfs_rq(curr);
 struct sched_entity *se = &curr->se;




 if (unlikely(rq->nr_running == 1))
  return;

 clear_buddies(cfs_rq, se);

 if (curr->policy != SCHED_BATCH) {
  update_rq_clock(rq);



  update_curr(cfs_rq);
 }

 set_skip_buddy(se);
}
