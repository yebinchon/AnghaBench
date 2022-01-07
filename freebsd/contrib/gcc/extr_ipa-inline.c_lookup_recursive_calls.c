
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_node {struct cgraph_edge* callees; } ;
struct cgraph_edge {int count; struct cgraph_node* callee; int inline_failed; struct cgraph_edge* next_callee; } ;
typedef int fibheap_t ;


 int fibheap_insert (int ,int,struct cgraph_edge*) ;
 int max_count ;

__attribute__((used)) static void
lookup_recursive_calls (struct cgraph_node *node, struct cgraph_node *where,
   fibheap_t heap)
{
  static int priority;
  struct cgraph_edge *e;
  for (e = where->callees; e; e = e->next_callee)
    if (e->callee == node)
      {



        fibheap_insert (heap,
   !max_count ? priority++
          : -(e->count / ((max_count + (1<<24) - 1) / (1<<24))),
          e);
      }
  for (e = where->callees; e; e = e->next_callee)
    if (!e->inline_failed)
      lookup_recursive_calls (node, e->callee, heap);
}
