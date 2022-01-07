
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int SIZEOF_EXPR ;
 int cxx_alignof_expr (int ) ;
 int cxx_sizeof_expr (int ) ;

tree
cxx_sizeof_or_alignof_expr (tree e, enum tree_code op)
{
  if (op == SIZEOF_EXPR)
    return cxx_sizeof_expr (e);
  else
    return cxx_alignof_expr (e);
}
