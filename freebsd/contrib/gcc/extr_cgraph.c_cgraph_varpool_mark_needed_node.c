
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_varpool_node {int needed; int decl; scalar_t__ finalized; } ;


 int TREE_ASM_WRITTEN (int ) ;
 int cgraph_varpool_enqueue_needed_node (struct cgraph_varpool_node*) ;

void
cgraph_varpool_mark_needed_node (struct cgraph_varpool_node *node)
{
  if (!node->needed && node->finalized
      && !TREE_ASM_WRITTEN (node->decl))
    cgraph_varpool_enqueue_needed_node (node);
  node->needed = 1;
}
