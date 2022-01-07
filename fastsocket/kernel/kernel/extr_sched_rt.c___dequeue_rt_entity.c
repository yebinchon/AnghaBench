
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_rt_entity {int run_list; } ;
struct rt_prio_array {int bitmap; scalar_t__ queue; } ;
struct rt_rq {int rt_nr_running; struct rt_prio_array active; } ;


 int __clear_bit (scalar_t__,int ) ;
 int dec_rt_tasks (struct sched_rt_entity*,struct rt_rq*) ;
 int list_del_init (int *) ;
 int list_del_leaf_rt_rq (struct rt_rq*) ;
 scalar_t__ list_empty (scalar_t__) ;
 struct rt_rq* rt_rq_of_se (struct sched_rt_entity*) ;
 scalar_t__ rt_se_prio (struct sched_rt_entity*) ;

__attribute__((used)) static void __dequeue_rt_entity(struct sched_rt_entity *rt_se)
{
 struct rt_rq *rt_rq = rt_rq_of_se(rt_se);
 struct rt_prio_array *array = &rt_rq->active;

 list_del_init(&rt_se->run_list);
 if (list_empty(array->queue + rt_se_prio(rt_se)))
  __clear_bit(rt_se_prio(rt_se), array->bitmap);

 dec_rt_tasks(rt_se, rt_rq);
 if (!rt_rq->rt_nr_running)
  list_del_leaf_rt_rq(rt_rq);
}
