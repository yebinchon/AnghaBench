
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_pretty_printer ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;

 int c_dialect_cxx () ;
 int flag_isoc99 ;
 int pp_c_identifier (int *,char*) ;
 int pp_c_left_paren (int *) ;
 int pp_c_type_qualifier_list (int *,int ) ;
 int pp_c_whitespace (int *) ;
 int pp_ptr_operator (int *,int ) ;
 int pp_simple_type_specifier (int *,int ) ;
 int strip_pointer_operator (int ) ;

void
pp_c_specifier_qualifier_list (c_pretty_printer *pp, tree t)
{
  const enum tree_code code = TREE_CODE (t);

  if (TREE_CODE (t) != 130)
    pp_c_type_qualifier_list (pp, t);
  switch (code)
    {
    case 129:
    case 130:

    case 133:
      {

 tree pointee = strip_pointer_operator (TREE_TYPE (t));
 pp_c_specifier_qualifier_list (pp, pointee);
 if (TREE_CODE (pointee) == 134
     || TREE_CODE (pointee) == 131)
   {
     pp_c_whitespace (pp);
     pp_c_left_paren (pp);
   }
 else if (!c_dialect_cxx ())
   pp_c_whitespace (pp);
 pp_ptr_operator (pp, t);
      }
      break;

    case 131:
    case 134:
      pp_c_specifier_qualifier_list (pp, TREE_TYPE (t));
      break;

    case 128:
    case 132:
      pp_c_specifier_qualifier_list (pp, TREE_TYPE (t));
      if (code == 132)
 pp_c_identifier (pp, flag_isoc99 ? "_Complex" : "__complex__");
      else if (code == 128)
 pp_c_identifier (pp, "__vector__");
      break;

    default:
      pp_simple_type_specifier (pp, t);
      break;
    }
}
