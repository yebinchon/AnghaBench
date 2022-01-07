
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int rtx ;
struct TYPE_2__ {int (* expr_size ) (int ) ;} ;


 int NULL_RTX ;
 int SUBSTITUTE_PLACEHOLDER_IN_EXPR (int ,int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TYPE_MODE (int ) ;
 scalar_t__ WITH_SIZE_EXPR ;
 int expand_expr (int ,int ,int ,int ) ;
 TYPE_1__ lang_hooks ;
 int sizetype ;
 int stub1 (int ) ;

rtx
expr_size (tree exp)
{
  tree size;

  if (TREE_CODE (exp) == WITH_SIZE_EXPR)
    size = TREE_OPERAND (exp, 1);
  else
    size = SUBSTITUTE_PLACEHOLDER_IN_EXPR (lang_hooks.expr_size (exp), exp);

  return expand_expr (size, NULL_RTX, TYPE_MODE (sizetype), 0);
}
