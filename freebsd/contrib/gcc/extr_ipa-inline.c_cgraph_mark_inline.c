
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_edge* callers; } ;
struct cgraph_edge {scalar_t__ inline_failed; struct cgraph_node* caller; struct cgraph_edge* next_caller; struct cgraph_node* callee; } ;


 int cgraph_mark_inline_edge (struct cgraph_edge*,int) ;
 int gcc_assert (int) ;

__attribute__((used)) static struct cgraph_edge *
cgraph_mark_inline (struct cgraph_edge *edge)
{
  struct cgraph_node *to = edge->caller;
  struct cgraph_node *what = edge->callee;
  struct cgraph_edge *e, *next;
  int times = 0;



  for (e = what->callers; e; e = next)
    {
      next = e->next_caller;
      if (e->caller == to && e->inline_failed)
 {
          cgraph_mark_inline_edge (e, 1);
   if (e == edge)
     edge = next;
   times++;
 }
    }
  gcc_assert (times);
  return edge;
}
