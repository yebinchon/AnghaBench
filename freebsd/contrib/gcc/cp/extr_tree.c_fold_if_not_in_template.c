
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ UNARY_PLUS_EXPR ;
 int fold (int ) ;
 int fold_convert (int ,int ) ;
 scalar_t__ processing_template_decl ;

tree
fold_if_not_in_template (tree expr)
{




  if (processing_template_decl)
    return expr;


  if (TREE_CODE (expr) == UNARY_PLUS_EXPR)
    return fold_convert (TREE_TYPE (expr), TREE_OPERAND (expr, 0));

  return fold (expr);
}
