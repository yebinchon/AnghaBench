
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int gcc_assert (int) ;
 int may_propagate_copy (int ,int ) ;
 int merge_alias_info (int ,int ) ;
 int unsave_expr_now (int ) ;

void
propagate_tree_value (tree *op_p, tree val)
{






  if (TREE_CODE (val) == SSA_NAME)
    {
      if (TREE_CODE (*op_p) == SSA_NAME && POINTER_TYPE_P (TREE_TYPE (*op_p)))
 merge_alias_info (*op_p, val);
      *op_p = val;
    }
  else
    *op_p = unsave_expr_now (val);
}
