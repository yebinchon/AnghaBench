
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int redefined_extern_inline; int finalized; struct cgraph_node* inlined_to; } ;
struct cgraph_node {int analyzed; scalar_t__ reachable; struct cgraph_node* next_needed; TYPE_1__ global; struct cgraph_node* next; TYPE_1__ local; TYPE_1__ rtl; int output; } ;


 int cgraph_node_remove_callees (struct cgraph_node*) ;
 struct cgraph_node* cgraph_nodes ;
 struct cgraph_node* cgraph_nodes_queue ;
 int cgraph_remove_node (struct cgraph_node*) ;
 int flag_unit_at_a_time ;
 int gcc_assert (int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
cgraph_reset_node (struct cgraph_node *node)
{






  gcc_assert (!node->output);


  memset (&node->local, 0, sizeof (node->local));
  memset (&node->global, 0, sizeof (node->global));
  memset (&node->rtl, 0, sizeof (node->rtl));
  node->analyzed = 0;
  node->local.redefined_extern_inline = 1;
  node->local.finalized = 0;

  if (!flag_unit_at_a_time)
    {
      struct cgraph_node *n, *next;

      for (n = cgraph_nodes; n; n = next)
 {
   next = n->next;
   if (n->global.inlined_to == node)
     cgraph_remove_node (n);
 }
    }

  cgraph_node_remove_callees (node);



  if (node->reachable && !flag_unit_at_a_time)
    {
      struct cgraph_node *n;

      for (n = cgraph_nodes_queue; n; n = n->next_needed)
 if (n == node)
   break;
      if (!n)
 node->reachable = 0;
    }
}
