
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 scalar_t__ INIT_EXPR ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int pp_c_conditional_expression (int *,int ) ;
 int pp_c_expression (int *,int ) ;
 int pp_c_unary_expression (int *,int ) ;
 int pp_c_whitespace (int *) ;
 int pp_equal (int *) ;
 int pp_space (int *) ;

__attribute__((used)) static void
pp_c_assignment_expression (c_pretty_printer *pp, tree e)
{
  if (TREE_CODE (e) == MODIFY_EXPR || TREE_CODE (e) == INIT_EXPR)
    {
      pp_c_unary_expression (pp, TREE_OPERAND (e, 0));
      pp_c_whitespace (pp);
      pp_equal (pp);
      pp_space (pp);
      pp_c_expression (pp, TREE_OPERAND (e, 1));
    }
  else
    pp_c_conditional_expression (pp, e);
}
