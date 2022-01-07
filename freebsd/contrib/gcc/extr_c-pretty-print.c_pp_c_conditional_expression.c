
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 scalar_t__ COND_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int pp_c_logical_or_expression (int *,int ) ;
 int pp_c_whitespace (int *) ;
 int pp_colon (int *) ;
 int pp_expression (int *,int ) ;
 int pp_question (int *) ;

__attribute__((used)) static void
pp_c_conditional_expression (c_pretty_printer *pp, tree e)
{
  if (TREE_CODE (e) == COND_EXPR)
    {
      pp_c_logical_or_expression (pp, TREE_OPERAND (e, 0));
      pp_c_whitespace (pp);
      pp_question (pp);
      pp_c_whitespace (pp);
      pp_expression (pp, TREE_OPERAND (e, 1));
      pp_c_whitespace (pp);
      pp_colon (pp);
      pp_c_whitespace (pp);
      pp_c_conditional_expression (pp, TREE_OPERAND (e, 2));
    }
  else
    pp_c_logical_or_expression (pp, e);
}
