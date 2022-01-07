
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int finalized; } ;
struct cgraph_node {scalar_t__ nested; int lowered; TYPE_1__ local; int decl; } ;
struct TYPE_6__ {int * cfg; } ;
struct TYPE_5__ {int (* deferred_inline_function ) (int ) ;} ;


 int DECL_COMDAT (int ) ;
 int DECL_EXTERNAL (int ) ;
 TYPE_3__* DECL_STRUCT_FUNCTION (int ) ;
 int TREE_ASM_WRITTEN (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 int cgraph_analyze_function (struct cgraph_node*) ;
 int cgraph_assemble_pending_functions () ;
 int cgraph_decide_inlining_incrementally (struct cgraph_node*,int) ;
 int cgraph_mark_needed_node (struct cgraph_node*) ;
 int cgraph_mark_reachable_node (struct cgraph_node*) ;
 struct cgraph_node* cgraph_node (int ) ;
 int cgraph_reset_node (struct cgraph_node*) ;
 TYPE_2__* debug_hooks ;
 scalar_t__ decide_is_function_needed (struct cgraph_node*,int ) ;
 int do_warn_unused_parameter (int ) ;
 int flag_unit_at_a_time ;
 int gcc_assert (int) ;
 int ggc_collect () ;
 int lower_nested_functions (int ,int) ;
 int notice_global_symbol (int ) ;
 int stub1 (int ) ;
 scalar_t__ warn_unused_parameter ;

void
cgraph_finalize_function (tree decl, bool nested)
{
  struct cgraph_node *node = cgraph_node (decl);

  if (node->local.finalized)
    cgraph_reset_node (node);

  notice_global_symbol (decl);
  node->decl = decl;
  node->local.finalized = 1;
  node->lowered = DECL_STRUCT_FUNCTION (decl)->cfg != ((void*)0);
  if (node->nested)

    lower_nested_functions (decl, 0);
  gcc_assert (!node->nested);



  if (!flag_unit_at_a_time)
    {
      cgraph_analyze_function (node);
      cgraph_decide_inlining_incrementally (node, 0);
    }

  if (decide_is_function_needed (node, decl))
    cgraph_mark_needed_node (node);




  if ((TREE_PUBLIC (decl) && !DECL_COMDAT (decl) && !DECL_EXTERNAL (decl)))
    cgraph_mark_reachable_node (node);



  if (!nested)
    {
      if (!cgraph_assemble_pending_functions ())
 ggc_collect ();
    }


  if (!TREE_ASM_WRITTEN (decl))
    (*debug_hooks->deferred_inline_function) (decl);


  if (warn_unused_parameter)
    do_warn_unused_parameter (decl);
}
