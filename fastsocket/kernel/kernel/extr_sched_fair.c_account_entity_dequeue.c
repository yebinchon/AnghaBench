
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int weight; } ;
struct sched_entity {int group_node; TYPE_1__ load; } ;
struct cfs_rq {int nr_running; int load; } ;


 int add_cfs_task_weight (struct cfs_rq*,int ) ;
 int dec_cpu_load (int ,int ) ;
 scalar_t__ entity_is_task (struct sched_entity*) ;
 int list_del_init (int *) ;
 int parent_entity (struct sched_entity*) ;
 int rq_of (struct cfs_rq*) ;
 int update_load_sub (int *,int ) ;

__attribute__((used)) static void
account_entity_dequeue(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
 update_load_sub(&cfs_rq->load, se->load.weight);
 if (!parent_entity(se))
  dec_cpu_load(rq_of(cfs_rq), se->load.weight);
 if (entity_is_task(se)) {
  add_cfs_task_weight(cfs_rq, -se->load.weight);
  list_del_init(&se->group_node);
 }
 cfs_rq->nr_running--;
}
