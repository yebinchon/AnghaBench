
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int cxx_pretty_printer ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 int TREE_PURPOSE (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int pp_colon (int *) ;
 int pp_cxx_call_argument_list (int *,int ) ;
 int pp_cxx_primary_expression (int *,int ) ;
 int pp_cxx_separate_with (int *,char) ;
 int pp_cxx_whitespace (int *) ;

__attribute__((used)) static void
pp_cxx_ctor_initializer (cxx_pretty_printer *pp, tree t)
{
  t = TREE_OPERAND (t, 0);
  pp_cxx_whitespace (pp);
  pp_colon (pp);
  pp_cxx_whitespace (pp);
  for (; t; t = TREE_CHAIN (t))
    {
      pp_cxx_primary_expression (pp, TREE_PURPOSE (t));
      pp_cxx_call_argument_list (pp, TREE_VALUE (t));
      if (TREE_CHAIN (t))
 pp_cxx_separate_with (pp, ',');
    }
}
