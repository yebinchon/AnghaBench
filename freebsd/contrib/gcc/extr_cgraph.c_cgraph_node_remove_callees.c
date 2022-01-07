
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int * call_site_hash; struct cgraph_edge* callees; } ;
struct cgraph_edge {struct cgraph_edge* next_callee; } ;


 int cgraph_edge_remove_callee (struct cgraph_edge*) ;
 int htab_delete (int *) ;

void
cgraph_node_remove_callees (struct cgraph_node *node)
{
  struct cgraph_edge *e;




  for (e = node->callees; e; e = e->next_callee)
    cgraph_edge_remove_callee (e);
  node->callees = ((void*)0);
  if (node->call_site_hash)
    {
      htab_delete (node->call_site_hash);
      node->call_site_hash = ((void*)0);
    }
}
