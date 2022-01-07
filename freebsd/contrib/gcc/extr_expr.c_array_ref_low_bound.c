
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ SUBSTITUTE_PLACEHOLDER_IN_EXPR (scalar_t__,scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_DOMAIN (int ) ;
 scalar_t__ TYPE_MIN_VALUE (scalar_t__) ;
 scalar_t__ build_int_cst (int ,int ) ;

tree
array_ref_low_bound (tree exp)
{
  tree domain_type = TYPE_DOMAIN (TREE_TYPE (TREE_OPERAND (exp, 0)));


  if (TREE_OPERAND (exp, 2))
    return TREE_OPERAND (exp, 2);



  if (domain_type && TYPE_MIN_VALUE (domain_type))
    return SUBSTITUTE_PLACEHOLDER_IN_EXPR (TYPE_MIN_VALUE (domain_type), exp);


  return build_int_cst (TREE_TYPE (TREE_OPERAND (exp, 1)), 0);
}
