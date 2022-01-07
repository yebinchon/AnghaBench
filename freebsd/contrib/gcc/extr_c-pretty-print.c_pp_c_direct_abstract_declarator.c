
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;
 int PLUS_EXPR ;



 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;

 int TYPE_DOMAIN (int ) ;
 int TYPE_MAX_VALUE (int ) ;



 int build2 (int ,int ,int ,int ) ;
 int build_int_cst (int ,int) ;
 int fold (int ) ;
 int host_integerp (int ,int ) ;
 int pp_abstract_declarator (int *,int ) ;
 int pp_c_left_bracket (int *) ;
 int pp_c_parameter_type_list (int *,int ) ;
 int pp_c_right_bracket (int *) ;
 int pp_direct_abstract_declarator (int *,int ) ;
 int pp_expression (int *,int ) ;
 int pp_unsupported_tree (int *,int ) ;
 int pp_wide_integer (int *,int ) ;
 int tree_low_cst (int ,int ) ;

void
pp_c_direct_abstract_declarator (c_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 134:

    case 141:
      pp_abstract_declarator (pp, t);
      break;

    case 137:
      pp_c_parameter_type_list (pp, t);
      pp_direct_abstract_declarator (pp, TREE_TYPE (t));
      break;

    case 142:
      pp_c_left_bracket (pp);
      if (TYPE_DOMAIN (t) && TYPE_MAX_VALUE (TYPE_DOMAIN (t)))
 {
   tree maxval = TYPE_MAX_VALUE (TYPE_DOMAIN (t));
   tree type = TREE_TYPE (maxval);

   if (host_integerp (maxval, 0))
     pp_wide_integer (pp, tree_low_cst (maxval, 0) + 1);
   else
     pp_expression (pp, fold (build2 (PLUS_EXPR, type, maxval,
          build_int_cst (type, 1))));
 }
      pp_c_right_bracket (pp);
      pp_direct_abstract_declarator (pp, TREE_TYPE (t));
      break;

    case 136:
    case 128:
    case 140:
    case 135:
    case 133:
    case 138:
    case 132:
    case 130:
    case 129:
    case 139:
    case 131:
      break;

    default:
      pp_unsupported_tree (pp, t);
      break;
    }
}
