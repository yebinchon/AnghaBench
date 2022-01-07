
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 scalar_t__ COND_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int pp_c_base (int *) ;
 int pp_c_logical_or_expression (int ,int ) ;
 int pp_cxx_assignment_expression (int *,int ) ;
 int pp_cxx_expression (int *,int ) ;
 int pp_question (int *) ;
 int pp_space (int *) ;

__attribute__((used)) static void
pp_cxx_conditional_expression (cxx_pretty_printer *pp, tree e)
{
  if (TREE_CODE (e) == COND_EXPR)
    {
      pp_c_logical_or_expression (pp_c_base (pp), TREE_OPERAND (e, 0));
      pp_space (pp);
      pp_question (pp);
      pp_space (pp);
      pp_cxx_expression (pp, TREE_OPERAND (e, 1));
      pp_space (pp);
      pp_cxx_assignment_expression (pp, TREE_OPERAND (e, 2));
    }
  else
    pp_c_logical_or_expression (pp_c_base (pp), e);
}
