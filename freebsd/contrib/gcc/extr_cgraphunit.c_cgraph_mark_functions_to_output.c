
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {scalar_t__ inlined_to; } ;
struct cgraph_node {int output; TYPE_1__ global; scalar_t__ reachable; scalar_t__ needed; struct cgraph_edge* callers; int decl; struct cgraph_node* next; } ;
struct cgraph_edge {scalar_t__ inline_failed; struct cgraph_edge* next_caller; } ;


 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ DECL_SAVED_TREE (int ) ;
 int TREE_ASM_WRITTEN (int ) ;
 struct cgraph_node* cgraph_nodes ;
 int dump_cgraph_node (int ,struct cgraph_node*) ;
 int gcc_assert (int) ;
 int internal_error (char*) ;
 int stderr ;

__attribute__((used)) static void
cgraph_mark_functions_to_output (void)
{
  struct cgraph_node *node;

  for (node = cgraph_nodes; node; node = node->next)
    {
      tree decl = node->decl;
      struct cgraph_edge *e;

      gcc_assert (!node->output);

      for (e = node->callers; e; e = e->next_caller)
 if (e->inline_failed)
   break;




      if (DECL_SAVED_TREE (decl)
   && !node->global.inlined_to
   && (node->needed
       || (e && node->reachable))
   && !TREE_ASM_WRITTEN (decl)
   && !DECL_EXTERNAL (decl))
 node->output = 1;
      else
 {
   gcc_assert (node->global.inlined_to || !DECL_SAVED_TREE (decl)
        || DECL_EXTERNAL (decl));

 }

    }
}
