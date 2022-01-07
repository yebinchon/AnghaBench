
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int c_pretty_printer ;



 int DECL_NAME (int ) ;






 int TREE_CODE (int ) ;

 int TYPE_MODE (int ) ;
 int TYPE_NAME (int ) ;
 int TYPE_PRECISION (int ) ;
 int TYPE_UNSIGNED (int ) ;


 int c_common_type_for_mode (int ,int ) ;
 int gcc_unreachable () ;
 int pp_c_identifier (int *,char*) ;
 int pp_c_tree_decl_identifier (int *,int ) ;
 int pp_decimal_int (int *,int) ;
 int pp_id_expression (int *,int ) ;
 int pp_string (int *,char*) ;
 int pp_unsupported_tree (int *,int ) ;

void
pp_c_type_specifier (c_pretty_printer *pp, tree t)
{
  const enum tree_code code = TREE_CODE (t);
  switch (code)
    {
    case 135:
      pp_c_identifier (pp, "<type-error>");
      break;

    case 134:
      pp_c_tree_decl_identifier (pp, t);
      break;

    case 128:
    case 137:
    case 133:
    case 132:
      if (TYPE_NAME (t))
 {
   t = TYPE_NAME (t);
   pp_c_type_specifier (pp, t);
 }
      else
 {
   int prec = TYPE_PRECISION (t);
   t = c_common_type_for_mode (TYPE_MODE (t), TYPE_UNSIGNED (t));
   if (TYPE_NAME (t))
     {
       pp_c_type_specifier (pp, t);
       if (TYPE_PRECISION (t) != prec)
  {
    pp_string (pp, ":");
    pp_decimal_int (pp, prec);
  }
     }
   else
     {
       switch (code)
  {
  case 133:
    pp_string (pp, (TYPE_UNSIGNED (t)
      ? "<unnamed-unsigned:"
      : "<unnamed-signed:"));
    break;
  case 132:
    pp_string (pp, "<unnamed-float:");
    break;
  default:
    gcc_unreachable ();
  }
       pp_decimal_int (pp, prec);
       pp_string (pp, ">");
     }
 }
      break;

    case 130:
      if (DECL_NAME (t))
 pp_id_expression (pp, t);
      else
 pp_c_identifier (pp, "<typedef-error>");
      break;

    case 129:
    case 131:
    case 136:
      if (code == 129)
 pp_c_identifier (pp, "union");
      else if (code == 131)
 pp_c_identifier (pp, "struct");
      else if (code == 136)
 pp_c_identifier (pp, "enum");
      else
 pp_c_identifier (pp, "<tag-error>");

      if (TYPE_NAME (t))
 pp_id_expression (pp, TYPE_NAME (t));
      else
 pp_c_identifier (pp, "<anonymous>");
      break;

    default:
      pp_unsupported_tree (pp, t);
      break;
    }
}
