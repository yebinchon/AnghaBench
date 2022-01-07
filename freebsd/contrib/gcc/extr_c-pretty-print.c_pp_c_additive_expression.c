
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_pretty_printer ;




 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int pp_c_whitespace (int *) ;
 int pp_minus (int *) ;
 int pp_multiplicative_expression (int *,int ) ;
 int pp_plus (int *) ;

__attribute__((used)) static void
pp_c_additive_expression (c_pretty_printer *pp, tree e)
{
  enum tree_code code = TREE_CODE (e);
  switch (code)
    {
    case 128:
    case 129:
      pp_c_additive_expression (pp, TREE_OPERAND (e, 0));
      pp_c_whitespace (pp);
      if (code == 128)
 pp_plus (pp);
      else
 pp_minus (pp);
      pp_c_whitespace (pp);
      pp_multiplicative_expression (pp, TREE_OPERAND (e, 1));
      break;

    default:
      pp_multiplicative_expression (pp, e);
      break;
    }
}
