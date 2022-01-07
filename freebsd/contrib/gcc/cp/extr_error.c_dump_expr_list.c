
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int TFF_EXPR_IN_PARENS ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int cxx_pp ;
 int dump_expr (int ,int) ;
 int pp_separate_with_comma (int ) ;

__attribute__((used)) static void
dump_expr_list (tree l, int flags)
{
  while (l)
    {
      dump_expr (TREE_VALUE (l), flags | TFF_EXPR_IN_PARENS);
      l = TREE_CHAIN (l);
      if (l)
 pp_separate_with_comma (cxx_pp);
    }
}
