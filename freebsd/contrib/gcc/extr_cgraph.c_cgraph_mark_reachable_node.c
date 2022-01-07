
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ finalized; } ;
struct cgraph_node {int reachable; struct cgraph_node* next_needed; int decl; TYPE_1__ local; } ;


 int cgraph_global_info_ready ;
 struct cgraph_node* cgraph_nodes_queue ;
 int gcc_assert (int) ;
 int notice_global_symbol (int ) ;

void
cgraph_mark_reachable_node (struct cgraph_node *node)
{
  if (!node->reachable && node->local.finalized)
    {
      notice_global_symbol (node->decl);
      node->reachable = 1;
      gcc_assert (!cgraph_global_info_ready);

      node->next_needed = cgraph_nodes_queue;
      cgraph_nodes_queue = node;
    }
}
