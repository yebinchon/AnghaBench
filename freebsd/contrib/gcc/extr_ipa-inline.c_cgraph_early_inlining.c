
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int inlined_to; int insns; } ;
struct TYPE_3__ {scalar_t__ inlinable; int self_insns; } ;
struct cgraph_node {TYPE_2__ global; struct cgraph_node* next; scalar_t__ callers; scalar_t__ reachable; scalar_t__ needed; TYPE_1__ local; scalar_t__ analyzed; int decl; int aux; } ;


 scalar_t__ cgraph_decide_inlining_incrementally (struct cgraph_node*,int) ;
 int cgraph_n_nodes ;
 struct cgraph_node* cgraph_nodes ;
 int cgraph_postorder (struct cgraph_node**) ;
 int cgraph_remove_unreachable_nodes (int,int ) ;
 int dump_file ;
 scalar_t__ errorcount ;
 int estimate_num_insns (int ) ;
 int gcc_assert (int) ;
 struct cgraph_node** ggc_alloc (int) ;
 int ggc_collect () ;
 int ggc_free (struct cgraph_node**) ;
 int nnodes ;
 struct cgraph_node** order ;
 scalar_t__ sorrycount ;

__attribute__((used)) static unsigned int
cgraph_early_inlining (void)
{
  struct cgraph_node *node;
  int i;

  if (sorrycount || errorcount)
    return 0;





  order = ggc_alloc (sizeof (*order) * cgraph_n_nodes);
  nnodes = cgraph_postorder (order);
  for (i = nnodes - 1; i >= 0; i--)
    {
      node = order[i];
      if (node->analyzed && (node->needed || node->reachable))
        node->local.self_insns = node->global.insns
   = estimate_num_insns (node->decl);
    }
  for (i = nnodes - 1; i >= 0; i--)
    {
      node = order[i];
      if (node->analyzed && node->local.inlinable
   && (node->needed || node->reachable)
   && node->callers)
 {
   if (cgraph_decide_inlining_incrementally (node, 1))
     ggc_collect ();
 }
    }
  cgraph_remove_unreachable_nodes (1, dump_file);




  ggc_free (order);
  order = ((void*)0);
  nnodes = 0;
  return 0;
}
