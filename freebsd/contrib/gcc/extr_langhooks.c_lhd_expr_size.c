
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_P (scalar_t__) ;
 scalar_t__ DECL_SIZE_UNIT (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ size_in_bytes (int ) ;

tree
lhd_expr_size (tree exp)
{
  if (DECL_P (exp)
      && DECL_SIZE_UNIT (exp) != 0)
    return DECL_SIZE_UNIT (exp);
  else
    return size_in_bytes (TREE_TYPE (exp));
}
