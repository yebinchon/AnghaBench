
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ADDR_EXPR ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int build1 (int ,int ,int ) ;
 int build_pointer_type (int ) ;

tree
inline_conversion (tree exp)
{
  if (TREE_CODE (exp) == FUNCTION_DECL)
    exp = build1 (ADDR_EXPR, build_pointer_type (TREE_TYPE (exp)), exp);

  return exp;
}
