
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int BIT_AND_EXPR ;
 int INTEGER_TYPE ;
 int NULL_TREE ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build_int_cst (int ,int) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int integer_type_node ;
 int validate_arglist (int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_toascii (tree arglist)
{
  if (! validate_arglist (arglist, INTEGER_TYPE, VOID_TYPE))
    return 0;
  else
    {

      tree arg = TREE_VALUE (arglist);

      return fold_build2 (BIT_AND_EXPR, integer_type_node, arg,
     build_int_cst (NULL_TREE, 0x7f));
    }
}
