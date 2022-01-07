
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct leh_tf_state {int goto_queue_active; int goto_queue; } ;
struct goto_queue_node {int * repl_stmt; int * stmt; } ;


 scalar_t__ bsearch (struct goto_queue_node*,int ,int ,int,int ) ;
 int goto_queue_cmp ;

__attribute__((used)) static tree
find_goto_replacement (struct leh_tf_state *tf, tree stmt)
{
  struct goto_queue_node tmp, *ret;
  tmp.stmt = stmt;
  ret = (struct goto_queue_node *)
     bsearch (&tmp, tf->goto_queue, tf->goto_queue_active,
   sizeof (struct goto_queue_node), goto_queue_cmp);
  return (ret ? ret->repl_stmt : ((void*)0));
}
