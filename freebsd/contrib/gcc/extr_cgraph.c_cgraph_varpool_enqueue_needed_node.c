
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_varpool_node {int decl; struct cgraph_varpool_node* next_needed; } ;


 struct cgraph_varpool_node* cgraph_varpool_first_unanalyzed_node ;
 struct cgraph_varpool_node* cgraph_varpool_last_needed_node ;
 struct cgraph_varpool_node* cgraph_varpool_nodes_queue ;
 int notice_global_symbol (int ) ;

void
cgraph_varpool_enqueue_needed_node (struct cgraph_varpool_node *node)
{
  if (cgraph_varpool_last_needed_node)
    cgraph_varpool_last_needed_node->next_needed = node;
  cgraph_varpool_last_needed_node = node;
  node->next_needed = ((void*)0);
  if (!cgraph_varpool_nodes_queue)
    cgraph_varpool_nodes_queue = node;
  if (!cgraph_varpool_first_unanalyzed_node)
    cgraph_varpool_first_unanalyzed_node = node;
  notice_global_symbol (node->decl);
}
