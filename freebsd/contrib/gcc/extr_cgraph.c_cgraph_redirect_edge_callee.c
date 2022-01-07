
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_edge* callers; } ;
struct cgraph_edge {struct cgraph_node* callee; struct cgraph_edge* next_caller; struct cgraph_edge* prev_caller; } ;


 int cgraph_edge_remove_callee (struct cgraph_edge*) ;

void
cgraph_redirect_edge_callee (struct cgraph_edge *e, struct cgraph_node *n)
{

  cgraph_edge_remove_callee (e);


  e->prev_caller = ((void*)0);
  if (n->callers)
    n->callers->prev_caller = e;
  e->next_caller = n->callers;
  n->callers = e;
  e->callee = n;
}
