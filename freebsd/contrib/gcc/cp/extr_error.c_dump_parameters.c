
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int TFF_EXPR_IN_PARENS ;
 int TFF_FUNCTION_DEFAULT_ARGUMENTS ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int cxx_pp ;
 int dump_expr (scalar_t__,int) ;
 int dump_type (int ,int) ;
 int pp_cxx_identifier (int ,char*) ;
 int pp_cxx_left_paren (int ) ;
 int pp_cxx_right_paren (int ) ;
 int pp_cxx_whitespace (int ) ;
 int pp_equal (int ) ;
 int pp_separate_with_comma (int ) ;
 scalar_t__ void_list_node ;

__attribute__((used)) static void
dump_parameters (tree parmtypes, int flags)
{
  int first;

  pp_cxx_left_paren (cxx_pp);

  for (first = 1; parmtypes != void_list_node;
       parmtypes = TREE_CHAIN (parmtypes))
    {
      if (!first)
 pp_separate_with_comma (cxx_pp);
      first = 0;
      if (!parmtypes)
 {
   pp_cxx_identifier (cxx_pp, "...");
   break;
 }
      dump_type (TREE_VALUE (parmtypes), flags);

      if ((flags & TFF_FUNCTION_DEFAULT_ARGUMENTS) && TREE_PURPOSE (parmtypes))
 {
   pp_cxx_whitespace (cxx_pp);
   pp_equal (cxx_pp);
   pp_cxx_whitespace (cxx_pp);
   dump_expr (TREE_PURPOSE (parmtypes), flags | TFF_EXPR_IN_PARENS);
 }
    }

  pp_cxx_right_paren (cxx_pp);
}
