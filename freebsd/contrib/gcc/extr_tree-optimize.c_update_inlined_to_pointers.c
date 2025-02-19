
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct cgraph_node* inlined_to; } ;
struct cgraph_node {TYPE_1__ global; struct cgraph_edge* callees; } ;
struct cgraph_edge {struct cgraph_node* callee; struct cgraph_edge* next_callee; } ;



__attribute__((used)) static void
update_inlined_to_pointers (struct cgraph_node *node,
       struct cgraph_node *inlined_to)
{
  struct cgraph_edge *e;
  for (e = node->callees; e; e = e->next_callee)
    {
      if (e->callee->global.inlined_to)
 {
   e->callee->global.inlined_to = inlined_to;
   update_inlined_to_pointers (e->callee, inlined_to);
 }
    }
}
