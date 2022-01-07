
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_varpool_node {scalar_t__ force_output; scalar_t__ finalized; scalar_t__ needed; struct cgraph_varpool_node* next_needed; int decl; } ;


 int DECL_ASSEMBLER_NAME (int ) ;
 scalar_t__ DECL_ASSEMBLER_NAME_SET_P (int ) ;
 scalar_t__ DECL_RTL_SET_P (int ) ;
 scalar_t__ TREE_SYMBOL_REFERENCED (int ) ;
 int cgraph_varpool_analyze_pending_decls () ;
 int cgraph_varpool_mark_needed_node (struct cgraph_varpool_node*) ;
 struct cgraph_varpool_node* cgraph_varpool_nodes_queue ;
 int cgraph_varpool_reset_queue () ;
 scalar_t__ decide_is_variable_needed (struct cgraph_varpool_node*,int ) ;
 scalar_t__ errorcount ;
 int finish_aliases_1 () ;
 scalar_t__ sorrycount ;

__attribute__((used)) static void
cgraph_varpool_remove_unreferenced_decls (void)
{
  struct cgraph_varpool_node *next, *node = cgraph_varpool_nodes_queue;

  cgraph_varpool_reset_queue ();

  if (errorcount || sorrycount)
    return;

  while (node)
    {
      tree decl = node->decl;
      next = node->next_needed;
      node->needed = 0;

      if (node->finalized
   && ((DECL_ASSEMBLER_NAME_SET_P (decl)
        && TREE_SYMBOL_REFERENCED (DECL_ASSEMBLER_NAME (decl)))
       || node->force_output
       || decide_is_variable_needed (node, decl)





       || DECL_RTL_SET_P (decl)))
 cgraph_varpool_mark_needed_node (node);

      node = next;
    }

  finish_aliases_1 ();
  cgraph_varpool_analyze_pending_decls ();
}
