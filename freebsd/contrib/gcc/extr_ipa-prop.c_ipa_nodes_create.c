
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_node* next; } ;


 struct cgraph_node* cgraph_nodes ;
 int ipa_node_create (struct cgraph_node*) ;

void
ipa_nodes_create (void)
{
  struct cgraph_node *node;

  for (node = cgraph_nodes; node; node = node->next)
    ipa_node_create (node);
}
