
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_pretty_printer ;
 int COMPOUND_LITERAL_EXPR_DECL (int ) ;

 int DECL_INITIAL (int ) ;
 int FUNCTION_DECL ;
 int INDIRECT_REF ;




 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int flag_isoc99 ;
 int pp_assignment_expression (int *,int ) ;
 int pp_c_arrow (int *) ;
 int pp_c_call_argument_list (int *,int ) ;
 int pp_c_compound_literal (int *,int ) ;
 int pp_c_dot (int *) ;
 int pp_c_id_expression (int *,int ) ;
 int pp_c_identifier (int *,char*) ;
 int pp_c_left_bracket (int *) ;
 int pp_c_left_paren (int *) ;
 int pp_c_right_bracket (int *) ;
 int pp_c_right_paren (int *) ;
 int pp_expression (int *,int ) ;
 int pp_identifier (int *,char*) ;
 int pp_initializer (int *,int ) ;
 int pp_postfix_expression (int *,int ) ;
 int pp_primary_expression (int *,int ) ;
 int pp_separate_with (int *,char) ;
 int pp_type_id (int *,int ) ;

void
pp_c_postfix_expression (c_pretty_printer *pp, tree e)
{
  enum tree_code code = TREE_CODE (e);
  switch (code)
    {
    case 136:
    case 137:
      pp_postfix_expression (pp, TREE_OPERAND (e, 0));
      pp_identifier (pp, code == 136 ? "++" : "--");
      break;

    case 146:
      pp_postfix_expression (pp, TREE_OPERAND (e, 0));
      pp_c_left_bracket (pp);
      pp_expression (pp, TREE_OPERAND (e, 1));
      pp_c_right_bracket (pp);
      break;

    case 145:
      pp_postfix_expression (pp, TREE_OPERAND (e, 0));
      pp_c_call_argument_list (pp, TREE_OPERAND (e, 1));
      break;

    case 130:
      pp_c_identifier (pp, flag_isoc99
      ? "isunordered"
      : "__builtin_isunordered");
      goto two_args_fun;

    case 138:
      pp_c_identifier (pp, flag_isoc99
      ? "!isunordered"
      : "!__builtin_isunordered");
      goto two_args_fun;

    case 131:
      pp_c_identifier (pp, flag_isoc99
      ? "!isgreaterequal"
      : "!__builtin_isgreaterequal");
      goto two_args_fun;

    case 132:
      pp_c_identifier (pp, flag_isoc99
      ? "!isgreater"
      : "!__builtin_isgreater");
      goto two_args_fun;

    case 133:
      pp_c_identifier (pp, flag_isoc99
      ? "!islessequal"
      : "!__builtin_islessequal");
      goto two_args_fun;

    case 134:
      pp_c_identifier (pp, flag_isoc99
      ? "!isless"
      : "!__builtin_isless");
      goto two_args_fun;

    case 135:
      pp_c_identifier (pp, flag_isoc99
      ? "!islessgreater"
      : "!__builtin_islessgreater");
      goto two_args_fun;

    case 139:
      pp_c_identifier (pp, flag_isoc99
      ? "islessgreater"
      : "__builtin_islessgreater");
      goto two_args_fun;

    two_args_fun:
      pp_c_left_paren (pp);
      pp_expression (pp, TREE_OPERAND (e, 0));
      pp_separate_with (pp, ',');
      pp_expression (pp, TREE_OPERAND (e, 1));
      pp_c_right_paren (pp);
      break;

    case 148:
      pp_c_identifier (pp, "__builtin_abs");
      pp_c_left_paren (pp);
      pp_expression (pp, TREE_OPERAND (e, 0));
      pp_c_right_paren (pp);
      break;

    case 142:
      {
 tree object = TREE_OPERAND (e, 0);
 if (TREE_CODE (object) == INDIRECT_REF)
   {
     pp_postfix_expression (pp, TREE_OPERAND (object, 0));
     pp_c_arrow (pp);
   }
 else
   {
     pp_postfix_expression (pp, object);
     pp_c_dot (pp);
   }
 pp_expression (pp, TREE_OPERAND (e, 1));
      }
      break;

    case 144:
    case 128:
    case 143:
      pp_c_compound_literal (pp, e);
      break;

    case 141:
      e = DECL_INITIAL (COMPOUND_LITERAL_EXPR_DECL (e));

    case 140:
      pp_initializer (pp, e);
      break;

    case 129:
      pp_c_identifier (pp, "__builtin_va_arg");
      pp_c_left_paren (pp);
      pp_assignment_expression (pp, TREE_OPERAND (e, 0));
      pp_separate_with (pp, ',');
      pp_type_id (pp, TREE_TYPE (e));
      pp_c_right_paren (pp);
      break;

    case 147:
      if (TREE_CODE (TREE_OPERAND (e, 0)) == FUNCTION_DECL)
 {
   pp_c_id_expression (pp, TREE_OPERAND (e, 0));
   break;
 }


    default:
      pp_primary_expression (pp, e);
      break;
    }
}
