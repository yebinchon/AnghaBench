
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef int edge ;
struct TYPE_2__ {int decl; } ;


 scalar_t__ COMPLEX_TYPE ;
 scalar_t__ DECL_ARGUMENTS (int ) ;
 int ENTRY_BLOCK_PTR ;
 int IMAGPART_EXPR ;
 int REALPART_EXPR ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 TYPE_1__* cfun ;
 scalar_t__ default_def (scalar_t__) ;
 int is_gimple_reg (scalar_t__) ;
 int single_succ_edge (int ) ;
 int update_complex_components_on_edge (int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
update_parameter_components (void)
{
  edge entry_edge = single_succ_edge (ENTRY_BLOCK_PTR);
  tree parm;

  for (parm = DECL_ARGUMENTS (cfun->decl); parm ; parm = TREE_CHAIN (parm))
    {
      tree type = TREE_TYPE (parm);
      tree ssa_name, r, i;

      if (TREE_CODE (type) != COMPLEX_TYPE || !is_gimple_reg (parm))
 continue;

      type = TREE_TYPE (type);
      ssa_name = default_def (parm);
      if (!ssa_name)
 continue;

      r = build1 (REALPART_EXPR, type, ssa_name);
      i = build1 (IMAGPART_EXPR, type, ssa_name);
      update_complex_components_on_edge (entry_edge, ssa_name, r, i);
    }
}
