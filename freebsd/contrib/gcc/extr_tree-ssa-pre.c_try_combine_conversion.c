
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_4__ {TYPE_1__* head; } ;
struct TYPE_3__ {int expr; } ;


 scalar_t__ CONVERT_EXPR ;
 scalar_t__ NOP_EXPR ;
 int STRIP_USELESS_TYPE_CONVERSION (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VALUE_HANDLE ;
 TYPE_2__* VALUE_HANDLE_EXPR_SET (scalar_t__) ;
 int VALUE_HANDLE_VUSES (scalar_t__) ;
 scalar_t__ fold_unary (scalar_t__,int ,int ) ;
 scalar_t__ is_gimple_min_invariant (scalar_t__) ;
 scalar_t__ vn_lookup (scalar_t__,int *) ;

__attribute__((used)) static bool
try_combine_conversion (tree *expr_p)
{
  tree expr = *expr_p;
  tree t;

  if (!((TREE_CODE (expr) == NOP_EXPR
  || TREE_CODE (expr) == CONVERT_EXPR)
 && TREE_CODE (TREE_OPERAND (expr, 0)) == VALUE_HANDLE
 && !VALUE_HANDLE_VUSES (TREE_OPERAND (expr, 0))))
    return 0;

  t = fold_unary (TREE_CODE (expr), TREE_TYPE (expr),
    VALUE_HANDLE_EXPR_SET (TREE_OPERAND (expr, 0))->head->expr);
  if (!t)
    return 0;



  STRIP_USELESS_TYPE_CONVERSION (t);



  if (!(TREE_CODE (t) == VALUE_HANDLE
 || is_gimple_min_invariant (t)))
    t = vn_lookup (t, ((void*)0));

  if (t && t != expr)
    {
      *expr_p = t;
      return 1;
    }
  return 0;
}
