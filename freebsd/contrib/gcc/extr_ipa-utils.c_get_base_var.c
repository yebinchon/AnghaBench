
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CONSTANT_CLASS_P (int ) ;
 scalar_t__ CONST_DECL ;
 scalar_t__ EXC_PTR_EXPR ;
 scalar_t__ FILTER_EXPR ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ LABEL_DECL ;
 int SSA_VAR_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;

tree
get_base_var (tree t)
{
  if ((TREE_CODE (t) == EXC_PTR_EXPR) || (TREE_CODE (t) == FILTER_EXPR))
    return t;

  while (!SSA_VAR_P (t)
  && (!CONSTANT_CLASS_P (t))
  && TREE_CODE (t) != LABEL_DECL
  && TREE_CODE (t) != FUNCTION_DECL
  && TREE_CODE (t) != CONST_DECL)
    {
      t = TREE_OPERAND (t, 0);
    }
  return t;
}
