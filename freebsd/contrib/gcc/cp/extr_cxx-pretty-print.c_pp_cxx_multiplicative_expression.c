
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int cxx_pretty_printer ;



 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;


 int pp_cxx_pm_expression (int *,int ) ;
 int pp_modulo (int *) ;
 int pp_slash (int *) ;
 int pp_space (int *) ;
 int pp_star (int *) ;

__attribute__((used)) static void
pp_cxx_multiplicative_expression (cxx_pretty_printer *pp, tree e)
{
  enum tree_code code = TREE_CODE (e);
  switch (code)
    {
    case 130:
    case 129:
    case 128:
      pp_cxx_multiplicative_expression (pp, TREE_OPERAND (e, 0));
      pp_space (pp);
      if (code == 130)
 pp_star (pp);
      else if (code == 129)
 pp_slash (pp);
      else
 pp_modulo (pp);
      pp_space (pp);
      pp_cxx_pm_expression (pp, TREE_OPERAND (e, 1));
      break;

    default:
      pp_cxx_pm_expression (pp, e);
      break;
    }
}
