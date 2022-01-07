
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_entity {int dummy; } ;
struct cfs_rq {struct sched_entity* next; struct sched_entity* last; struct sched_entity* skip; } ;


 struct sched_entity* __pick_first_entity (struct cfs_rq*) ;
 struct sched_entity* __pick_next_entity (struct sched_entity*) ;
 int clear_buddies (struct cfs_rq*,struct sched_entity*) ;
 int wakeup_preempt_entity (struct sched_entity*,struct sched_entity*) ;

__attribute__((used)) static struct sched_entity *pick_next_entity(struct cfs_rq *cfs_rq)
{
 struct sched_entity *se = __pick_first_entity(cfs_rq);
 struct sched_entity *left = se;





 if (cfs_rq->skip == se) {
  struct sched_entity *second = __pick_next_entity(se);
  if (second && wakeup_preempt_entity(second, left) < 1)
   se = second;
 }




 if (cfs_rq->last && wakeup_preempt_entity(cfs_rq->last, left) < 1)
  se = cfs_rq->last;




 if (cfs_rq->next && wakeup_preempt_entity(cfs_rq->next, left) < 1)
  se = cfs_rq->next;

 clear_buddies(cfs_rq, se);

 return se;
}
