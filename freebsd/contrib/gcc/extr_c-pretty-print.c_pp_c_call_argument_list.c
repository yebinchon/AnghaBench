
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_LIST ;
 int pp_c_expression_list (int *,int ) ;
 int pp_c_left_paren (int *) ;
 int pp_c_right_paren (int *) ;

void
pp_c_call_argument_list (c_pretty_printer *pp, tree t)
{
  pp_c_left_paren (pp);
  if (t && TREE_CODE (t) == TREE_LIST)
    pp_c_expression_list (pp, t);
  pp_c_right_paren (pp);
}
