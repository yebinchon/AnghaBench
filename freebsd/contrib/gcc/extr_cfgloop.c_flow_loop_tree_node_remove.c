
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int depth; int * pred; struct loop* next; struct loop* inner; struct loop* outer; } ;


 int free (int *) ;

void
flow_loop_tree_node_remove (struct loop *loop)
{
  struct loop *prev, *father;

  father = loop->outer;
  loop->outer = ((void*)0);


  if (father->inner == loop)
    father->inner = loop->next;
  else
    {
      for (prev = father->inner; prev->next != loop; prev = prev->next);
      prev->next = loop->next;
    }

  loop->depth = -1;
  free (loop->pred);
  loop->pred = ((void*)0);
}
