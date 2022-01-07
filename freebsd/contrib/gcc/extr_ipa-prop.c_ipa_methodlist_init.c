
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_node* next; } ;
typedef int * ipa_methodlist_p ;


 struct cgraph_node* cgraph_nodes ;
 int ipa_add_method (int **,struct cgraph_node*) ;

ipa_methodlist_p
ipa_methodlist_init (void)
{
  struct cgraph_node *node;
  ipa_methodlist_p wl;

  wl = ((void*)0);
  for (node = cgraph_nodes; node; node = node->next)
    ipa_add_method (&wl, node);

  return wl;
}
