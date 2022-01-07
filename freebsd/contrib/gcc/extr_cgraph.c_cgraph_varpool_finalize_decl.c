
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct cgraph_varpool_node {int finalized; scalar_t__ needed; } ;


 int DECL_COMDAT (int ) ;
 int DECL_EXTERNAL (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 scalar_t__ cgraph_global_info_ready ;
 int cgraph_varpool_assemble_pending_decls () ;
 int cgraph_varpool_enqueue_needed_node (struct cgraph_varpool_node*) ;
 int cgraph_varpool_mark_needed_node (struct cgraph_varpool_node*) ;
 struct cgraph_varpool_node* cgraph_varpool_node (int ) ;
 scalar_t__ decide_is_variable_needed (struct cgraph_varpool_node*,int ) ;
 int flag_openmp ;
 int flag_unit_at_a_time ;

void
cgraph_varpool_finalize_decl (tree decl)
{
  struct cgraph_varpool_node *node = cgraph_varpool_node (decl);





  if (node->finalized)
    {
      if (cgraph_global_info_ready || (!flag_unit_at_a_time && !flag_openmp))
 cgraph_varpool_assemble_pending_decls ();
      return;
    }
  if (node->needed)
    cgraph_varpool_enqueue_needed_node (node);
  node->finalized = 1;

  if (decide_is_variable_needed (node, decl))
    cgraph_varpool_mark_needed_node (node);



  else if (TREE_PUBLIC (decl) && !DECL_COMDAT (decl) && !DECL_EXTERNAL (decl))
    cgraph_varpool_mark_needed_node (node);
  if (cgraph_global_info_ready || (!flag_unit_at_a_time && !flag_openmp))
    cgraph_varpool_assemble_pending_decls ();
}
