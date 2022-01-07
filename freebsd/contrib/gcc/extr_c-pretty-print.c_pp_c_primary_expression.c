
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;

 int pp_ampersand (int *) ;
 int pp_c_constant (int *,int ) ;
 int pp_c_expression (int *,int ) ;
 int pp_c_identifier (int *,char*) ;
 int pp_c_left_paren (int *) ;
 int pp_c_right_paren (int *) ;
 int pp_c_tree_decl_identifier (int *,int ) ;
 int pp_c_tree_identifier (int *,int ) ;
 int pp_expression (int *,int ) ;
 int pp_initializer (int *,int ) ;
 int pp_primary_expression (int *,int ) ;
 int pp_separate_with (int *,char) ;

void
pp_c_primary_expression (c_pretty_printer *pp, tree e)
{
  switch (TREE_CODE (e))
    {
    case 128:
    case 133:
    case 138:
    case 140:
    case 137:
    case 134:
      pp_c_tree_decl_identifier (pp, e);
      break;

    case 136:
      pp_c_tree_identifier (pp, e);
      break;

    case 139:
      pp_c_identifier (pp, "<erroneous-expression>");
      break;

    case 131:
      pp_c_identifier (pp, "<return-value>");
      break;

    case 135:
    case 132:
    case 130:
      pp_c_constant (pp, e);
      break;

    case 129:
      pp_c_identifier (pp, "__builtin_memcpy");
      pp_c_left_paren (pp);
      pp_ampersand (pp);
      pp_primary_expression (pp, TREE_OPERAND (e, 0));
      pp_separate_with (pp, ',');
      pp_ampersand (pp);
      pp_initializer (pp, TREE_OPERAND (e, 1));
      if (TREE_OPERAND (e, 2))
 {
   pp_separate_with (pp, ',');
   pp_c_expression (pp, TREE_OPERAND (e, 2));
 }
      pp_c_right_paren (pp);
      break;

    default:

      pp_c_left_paren (pp);
      pp_expression (pp, e);
      pp_c_right_paren (pp);
      break;
    }
}
