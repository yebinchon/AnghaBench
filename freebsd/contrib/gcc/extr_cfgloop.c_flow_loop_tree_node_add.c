
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {struct loop* outer; struct loop* inner; struct loop* next; } ;


 int establish_preds (struct loop*) ;

void
flow_loop_tree_node_add (struct loop *father, struct loop *loop)
{
  loop->next = father->inner;
  father->inner = loop;
  loop->outer = father;

  establish_preds (loop);
}
