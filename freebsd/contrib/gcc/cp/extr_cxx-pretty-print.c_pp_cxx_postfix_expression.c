
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_1__ ;


typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_20__ {int enclosing_scope; } ;
typedef TYPE_1__ cxx_pretty_printer ;


 int ADDR_EXPR ;

 int AGGR_INIT_VIA_CTOR_P (int ) ;





 int DECL_NONSTATIC_MEMBER_FUNCTION_P (int ) ;




 int NOP_EXPR ;


 int POINTER_TYPE ;





 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;

 int TYPE_P (int ) ;

 int pp_c_base (TYPE_1__*) ;
 int pp_c_postfix_expression (int ,int ) ;
 int pp_complement (TYPE_1__*) ;
 int pp_cxx_arrow (TYPE_1__*) ;
 int pp_cxx_begin_template_argument_list (TYPE_1__*) ;
 int pp_cxx_call_argument_list (TYPE_1__*,int ) ;
 int pp_cxx_colon_colon (TYPE_1__*) ;
 int pp_cxx_dot (TYPE_1__*) ;
 int pp_cxx_end_template_argument_list (TYPE_1__*) ;
 int pp_cxx_expression (TYPE_1__*,int ) ;
 int pp_cxx_identifier (TYPE_1__*,char*) ;
 int pp_cxx_primary_expression (TYPE_1__*,int ) ;
 int pp_cxx_qualified_id (TYPE_1__*,int ) ;
 int pp_cxx_separate_with (TYPE_1__*,char) ;
 int pp_cxx_type_id (TYPE_1__*,int ) ;
 int pp_cxx_unqualified_id (TYPE_1__*,int ) ;
 int pp_left_paren (TYPE_1__*) ;
 int pp_right_paren (TYPE_1__*) ;
 int strip_pointer_operator (int ) ;

__attribute__((used)) static void
pp_cxx_postfix_expression (cxx_pretty_printer *pp, tree t)
{
  enum tree_code code = TREE_CODE (t);

  switch (code)
    {
    case 146:
    case 143:
      {
 tree fun = TREE_OPERAND (t, 0);
 tree args = TREE_OPERAND (t, 1);
 tree saved_scope = pp->enclosing_scope;

 if (TREE_CODE (fun) == ADDR_EXPR)
   fun = TREE_OPERAND (fun, 0);





 if (TREE_CODE (fun) != 137)
   ;
 else if (DECL_NONSTATIC_MEMBER_FUNCTION_P (fun))
   {
     tree object = code == 146 && AGGR_INIT_VIA_CTOR_P (t)
       ? TREE_OPERAND (t, 2)
       : TREE_VALUE (args);

     while (TREE_CODE (object) == NOP_EXPR)
       object = TREE_OPERAND (object, 0);

     if (TREE_CODE (object) == ADDR_EXPR)
       object = TREE_OPERAND (object, 0);

     if (TREE_CODE (TREE_TYPE (object)) != POINTER_TYPE)
       {
  pp_cxx_postfix_expression (pp, object);
  pp_cxx_dot (pp);
       }
     else
       {
  pp_cxx_postfix_expression (pp, object);
  pp_cxx_arrow (pp);
       }
     args = TREE_CHAIN (args);
     pp->enclosing_scope = strip_pointer_operator (TREE_TYPE (object));
   }

 pp_cxx_postfix_expression (pp, fun);
 pp->enclosing_scope = saved_scope;
 pp_cxx_call_argument_list (pp, args);
      }
      if (code == 146 && AGGR_INIT_VIA_CTOR_P (t))
 {
   pp_cxx_separate_with (pp, ',');
   pp_cxx_postfix_expression (pp, TREE_OPERAND (t, 2));
 }
      break;

    case 144:
    case 128:
    case 135:
    case 138:
    case 137:
    case 136:
    case 141:
    case 130:
    case 132:
      pp_cxx_primary_expression (pp, t);
      break;

    case 140:
    case 131:
    case 133:
    case 142:
      if (code == 140)
 pp_cxx_identifier (pp, "dynamic_cast");
      else if (code == 131)
 pp_cxx_identifier (pp, "static_cast");
      else if (code == 133)
 pp_cxx_identifier (pp, "reinterpret_cast");
      else
 pp_cxx_identifier (pp, "const_cast");
      pp_cxx_begin_template_argument_list (pp);
      pp_cxx_type_id (pp, TREE_TYPE (t));
      pp_cxx_end_template_argument_list (pp);
      pp_left_paren (pp);
      pp_cxx_expression (pp, TREE_OPERAND (t, 0));
      pp_right_paren (pp);
      break;

    case 139:
      pp_cxx_type_id (pp, TREE_TYPE (t));
      pp_left_paren (pp);
      pp_right_paren (pp);
      break;

    case 129:
      t = TREE_OPERAND (t, 0);
      pp_cxx_identifier (pp, "typeid");
      pp_left_paren (pp);
      if (TYPE_P (t))
 pp_cxx_type_id (pp, t);
      else
 pp_cxx_expression (pp, t);
      pp_right_paren (pp);
      break;

    case 134:
      pp_cxx_postfix_expression (pp, TREE_OPERAND (t, 0));
      pp_cxx_dot (pp);
      pp_cxx_qualified_id (pp, TREE_OPERAND (t, 1));
      pp_cxx_colon_colon (pp);
      pp_complement (pp);
      pp_cxx_unqualified_id (pp, TREE_OPERAND (t, 2));
      break;

    case 145:
      pp_cxx_postfix_expression (pp, TREE_OPERAND (t, 0));
      pp_cxx_arrow (pp);
      break;

    default:
      pp_c_postfix_expression (pp_c_base (pp), t);
      break;
    }
}
