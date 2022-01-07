
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ build_x_compound_expr (scalar_t__,scalar_t__) ;
 int pedwarn (char*,char const*) ;

tree build_x_compound_expr_from_list (tree list, const char *msg)
{
  tree expr = TREE_VALUE (list);

  if (TREE_CHAIN (list))
    {
      if (msg)
 pedwarn ("%s expression list treated as compound expression", msg);

      for (list = TREE_CHAIN (list); list; list = TREE_CHAIN (list))
 expr = build_x_compound_expr (expr, TREE_VALUE (list));
    }

  return expr;
}
