
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_node {int dummy; } ;
struct sched_entity {struct rb_node run_node; } ;
struct cfs_rq {int tasks_timeline; struct rb_node* rb_leftmost; } ;


 int rb_erase (struct rb_node*,int *) ;
 struct rb_node* rb_next (struct rb_node*) ;

__attribute__((used)) static void __dequeue_entity(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
 if (cfs_rq->rb_leftmost == &se->run_node) {
  struct rb_node *next_node;

  next_node = rb_next(&se->run_node);
  cfs_rq->rb_leftmost = next_node;
 }

 rb_erase(&se->run_node, &cfs_rq->tasks_timeline);
}
