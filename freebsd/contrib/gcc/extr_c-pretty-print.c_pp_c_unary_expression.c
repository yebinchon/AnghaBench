
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_pretty_printer ;
 int STRING_CST ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;

 int pp_ampersand (int *) ;
 int pp_c_cast_expression (int *,int ) ;
 int pp_c_identifier (int *,char*) ;
 int pp_c_star (int *) ;
 int pp_c_whitespace (int *) ;
 int pp_complement (int *) ;
 int pp_exclamation (int *) ;
 int pp_identifier (int *,char*) ;
 int pp_minus (int *) ;
 int pp_postfix_expression (int *,int ) ;
 int pp_unary_expression (int *,int ) ;

void
pp_c_unary_expression (c_pretty_printer *pp, tree e)
{
  enum tree_code code = TREE_CODE (e);
  switch (code)
    {
    case 130:
    case 131:
      pp_identifier (pp, code == 130 ? "++" : "--");
      pp_c_unary_expression (pp, TREE_OPERAND (e, 0));
      break;

    case 137:
    case 133:
    case 132:
    case 136:
    case 128:
    case 135:

      if (code == 137 && TREE_CODE (TREE_OPERAND (e, 0)) != STRING_CST)
 pp_ampersand (pp);
      else if (code == 133)
 pp_c_star (pp);
      else if (code == 132)
 pp_minus (pp);
      else if (code == 136 || code == 135)
 pp_complement (pp);
      else if (code == 128)
 pp_exclamation (pp);
      pp_c_cast_expression (pp, TREE_OPERAND (e, 0));
      break;

    case 129:
    case 134:
      pp_c_identifier (pp, code == 129 ? "__real__" : "__imag__");
      pp_c_whitespace (pp);
      pp_unary_expression (pp, TREE_OPERAND (e, 0));
      break;

    default:
      pp_postfix_expression (pp, e);
      break;
    }
}
