
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int run_list; } ;
struct rt_prio_array {struct list_head* queue; } ;
struct rt_rq {struct rt_prio_array active; } ;
struct list_head {int dummy; } ;


 int list_move (int *,struct list_head*) ;
 int list_move_tail (int *,struct list_head*) ;
 scalar_t__ on_rt_rq (struct sched_rt_entity*) ;
 int rt_se_prio (struct sched_rt_entity*) ;

__attribute__((used)) static void
requeue_rt_entity(struct rt_rq *rt_rq, struct sched_rt_entity *rt_se, int head)
{
 if (on_rt_rq(rt_se)) {
  struct rt_prio_array *array = &rt_rq->active;
  struct list_head *queue = array->queue + rt_se_prio(rt_se);

  if (head)
   list_move(&rt_se->run_list, queue);
  else
   list_move_tail(&rt_se->run_list, queue);
 }
}
