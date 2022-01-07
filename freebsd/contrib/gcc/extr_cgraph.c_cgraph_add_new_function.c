
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_node {struct cgraph_node* next_needed; } ;


 struct cgraph_node* cgraph_expand_queue ;
 struct cgraph_node* cgraph_node (int ) ;

void
cgraph_add_new_function (tree fndecl)
{
  struct cgraph_node *n = cgraph_node (fndecl);
  n->next_needed = cgraph_expand_queue;
  cgraph_expand_queue = n;
}
