
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {int * aux; struct cgraph_node* next; } ;


 struct cgraph_node* cgraph_nodes ;
 int free (int *) ;

void
ipa_nodes_free (void)
{
  struct cgraph_node *node;

  for (node = cgraph_nodes; node; node = node->next)
    {
      free (node->aux);
      node->aux = ((void*)0);
    }
}
