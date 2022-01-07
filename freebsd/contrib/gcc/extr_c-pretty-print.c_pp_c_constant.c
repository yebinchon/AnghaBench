
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_pretty_printer ;


 int ENUMERAL_TYPE ;



 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int boolean_type_node ;
 int char_type_node ;
 int pp_c_bool_constant (int *,int ) ;
 int pp_c_character_constant (int *,int ) ;
 int pp_c_enumeration_constant (int *,int ) ;
 int pp_c_floating_constant (int *,int ) ;
 int pp_c_integer_constant (int *,int ) ;
 int pp_c_string_literal (int *,int ) ;
 int pp_unsupported_tree (int *,int ) ;

void
pp_c_constant (c_pretty_printer *pp, tree e)
{
  const enum tree_code code = TREE_CODE (e);

  switch (code)
    {
    case 130:
      {
 tree type = TREE_TYPE (e);
 if (type == boolean_type_node)
   pp_c_bool_constant (pp, e);
 else if (type == char_type_node)
   pp_c_character_constant (pp, e);
 else if (TREE_CODE (type) == ENUMERAL_TYPE
   && pp_c_enumeration_constant (pp, e))
   ;
 else
   pp_c_integer_constant (pp, e);
      }
      break;

    case 129:
      pp_c_floating_constant (pp, e);
      break;

    case 128:
      pp_c_string_literal (pp, e);
      break;

    default:
      pp_unsupported_tree (pp, e);
      break;
    }
}
