
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* tree_ann_common_t ;
typedef int tree ;
struct TYPE_3__ {int value_handle; } ;


 scalar_t__ CONSTRUCTOR ;
 scalar_t__ DECL_P (int ) ;
 scalar_t__ EXPR_P (int ) ;
 int NULL_TREE ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_VALUE (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_LIST ;
 int gcc_unreachable () ;
 scalar_t__ is_gimple_min_invariant (int ) ;
 TYPE_1__* tree_common_ann (int ) ;

tree
get_value_handle (tree expr)
{

  if (is_gimple_min_invariant (expr))
    return expr;

  if (TREE_CODE (expr) == SSA_NAME)
    return SSA_NAME_VALUE (expr);
  else if (EXPR_P (expr) || DECL_P (expr) || TREE_CODE (expr) == TREE_LIST
    || TREE_CODE (expr) == CONSTRUCTOR)
    {
      tree_ann_common_t ann = tree_common_ann (expr);
      return ((ann) ? ann->value_handle : NULL_TREE);
    }
  else
    gcc_unreachable ();
}
