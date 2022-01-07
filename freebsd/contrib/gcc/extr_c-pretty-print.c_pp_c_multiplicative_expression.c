
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_pretty_printer ;



 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;


 int pp_c_cast_expression (int *,int ) ;
 int pp_c_star (int *) ;
 int pp_c_whitespace (int *) ;
 int pp_modulo (int *) ;
 int pp_multiplicative_expression (int *,int ) ;
 int pp_slash (int *) ;

__attribute__((used)) static void
pp_c_multiplicative_expression (c_pretty_printer *pp, tree e)
{
  enum tree_code code = TREE_CODE (e);
  switch (code)
    {
    case 130:
    case 129:
    case 128:
      pp_multiplicative_expression (pp, TREE_OPERAND (e, 0));
      pp_c_whitespace (pp);
      if (code == 130)
 pp_c_star (pp);
      else if (code == 129)
 pp_slash (pp);
      else
 pp_modulo (pp);
      pp_c_whitespace (pp);
      pp_c_cast_expression (pp, TREE_OPERAND (e, 1));
      break;

    default:
      pp_c_cast_expression (pp, e);
      break;
    }
}
