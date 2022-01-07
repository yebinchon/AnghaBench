
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_edge* callers; } ;
struct cgraph_edge {struct cgraph_edge* next_caller; } ;


 int cgraph_edge_remove_caller (struct cgraph_edge*) ;

__attribute__((used)) static void
cgraph_node_remove_callers (struct cgraph_node *node)
{
  struct cgraph_edge *e;




  for (e = node->callers; e; e = e->next_caller)
    cgraph_edge_remove_caller (e);
  node->callers = ((void*)0);
}
