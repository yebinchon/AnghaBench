
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;






 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int pp_c_base (int *) ;
 int pp_c_logical_or_expression (int ,int ) ;
 int pp_cxx_assignment_operator (int *,int ) ;
 int pp_cxx_conditional_expression (int *,int ) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_equal (int *) ;
 int pp_space (int *) ;

__attribute__((used)) static void
pp_cxx_assignment_expression (cxx_pretty_printer *pp, tree e)
{
  switch (TREE_CODE (e))
    {
    case 130:
    case 131:
      pp_c_logical_or_expression (pp_c_base (pp), TREE_OPERAND (e, 0));
      pp_space (pp);
      pp_equal (pp);
      pp_space (pp);
      pp_cxx_assignment_expression (pp, TREE_OPERAND (e, 1));
      break;

    case 128:
      pp_cxx_identifier (pp, "throw");
      if (TREE_OPERAND (e, 0))
 pp_cxx_assignment_expression (pp, TREE_OPERAND (e, 0));
      break;

    case 129:
      pp_c_logical_or_expression (pp_c_base (pp), TREE_OPERAND (e, 0));
      pp_cxx_assignment_operator (pp, TREE_OPERAND (e, 1));
      pp_cxx_assignment_expression (pp, TREE_OPERAND (e, 2));
      break;

    default:
      pp_cxx_conditional_expression (pp, e);
      break;
    }
}
