
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int cxx_pretty_printer ;



 int * BASELINK_FUNCTIONS (int *) ;

 int * DECL_NAME (int *) ;




 int IDENTIFIER_TYPENAME_P (int *) ;



 int * OVL_CURRENT (int *) ;





 int * TEMPLATE_PARM_DECL (int *) ;



 int TREE_CODE (int *) ;
 int TREE_TYPE (int *) ;

 int * TYPE_IDENTIFIER (int *) ;
 int * TYPE_NAME (int *) ;




 int * constructor_name (int ) ;
 int is_destructor_name (int *) ;
 int pp_complement (int *) ;
 int pp_cxx_canonical_template_parameter (int *,int *) ;
 int pp_cxx_conversion_function_id (int *,int *) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_cxx_template_id (int *,int *) ;
 int pp_cxx_tree_identifier (int *,int *) ;
 int pp_unsupported_tree (int *,int *) ;

__attribute__((used)) static void
pp_cxx_unqualified_id (cxx_pretty_printer *pp, tree t)
{
  enum tree_code code = TREE_CODE (t);
  switch (code)
    {
    case 138:
      pp_cxx_identifier (pp, "<return-value>");
      break;

    case 141:
      t = OVL_CURRENT (t);
    case 128:
    case 140:
    case 148:
    case 132:
    case 145:
    case 142:
    case 146:
    case 143:
    case 129:
    case 137:
      t = DECL_NAME (t);

    case 144:
      if (t == ((void*)0))
 pp_cxx_identifier (pp, "<unnamed>");
      else if (IDENTIFIER_TYPENAME_P (t))
 pp_cxx_conversion_function_id (pp, t);
      else
 {
   if (is_destructor_name (t))
     {
       pp_complement (pp);

       if (TREE_TYPE (t))
  t = constructor_name (TREE_TYPE (t));
     }
   pp_cxx_tree_identifier (pp, t);
 }
      break;

    case 136:
      pp_cxx_template_id (pp, t);
      break;

    case 149:
      pp_cxx_unqualified_id (pp, BASELINK_FUNCTIONS (t));
      break;

    case 139:
    case 130:
    case 147:
      pp_cxx_unqualified_id (pp, TYPE_NAME (t));
      break;

    case 133:
    case 134:
      if (TYPE_IDENTIFIER (t))
 pp_cxx_unqualified_id (pp, TYPE_IDENTIFIER (t));
      else
 pp_cxx_canonical_template_parameter (pp, t);
      break;

    case 135:
      pp_cxx_unqualified_id (pp, TEMPLATE_PARM_DECL (t));
      break;

    case 131:
      pp_cxx_unqualified_id (pp, TYPE_NAME (t));
      break;

    default:
      pp_unsupported_tree (pp, t);
      break;
    }
}
