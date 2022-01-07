
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct cgraph_varpool_node {int force_output; } ;
struct TYPE_2__ {int finalized; int vtable_method; } ;
struct cgraph_node {TYPE_1__ local; } ;


 int DECL_EXTERNAL (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 int cgraph_global_info_ready ;
 int cgraph_mark_needed_node (struct cgraph_node*) ;
 struct cgraph_node* cgraph_node (int ) ;
 int cgraph_varpool_mark_needed_node (struct cgraph_varpool_node*) ;
 struct cgraph_varpool_node* cgraph_varpool_node (int ) ;

void
mark_decl_referenced (tree decl)
{
  if (TREE_CODE (decl) == FUNCTION_DECL)
    {




      struct cgraph_node *node = cgraph_node (decl);
      if (!DECL_EXTERNAL (decl)
   && (!node->local.vtable_method || !cgraph_global_info_ready
       || !node->local.finalized))
 cgraph_mark_needed_node (node);
    }
  else if (TREE_CODE (decl) == VAR_DECL)
    {
      struct cgraph_varpool_node *node = cgraph_varpool_node (decl);
      cgraph_varpool_mark_needed_node (node);


      node->force_output = 1;
    }


}
