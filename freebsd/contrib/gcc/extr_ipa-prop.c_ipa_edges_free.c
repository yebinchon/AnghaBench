
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_edge* callees; struct cgraph_node* next; } ;
struct cgraph_edge {int * aux; struct cgraph_edge* next_callee; } ;


 struct cgraph_node* cgraph_nodes ;
 int free (int *) ;

void
ipa_edges_free (void)
{
  struct cgraph_node *node;
  struct cgraph_edge *cs;

  for (node = cgraph_nodes; node; node = node->next)
    for (cs = node->callees; cs; cs = cs->next_callee)
      {
 free (cs->aux);
 cs->aux = ((void*)0);
      }
}
