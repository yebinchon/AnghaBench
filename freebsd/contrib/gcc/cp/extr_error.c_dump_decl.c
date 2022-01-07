
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;




 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;


 int CP_DECL_CONTEXT (scalar_t__) ;
 int DECL_ARTIFICIAL (scalar_t__) ;
 int DECL_CLASS_SCOPE_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (scalar_t__) ;
 int DECL_GLOBAL_CTOR_P (scalar_t__) ;
 int DECL_GLOBAL_DTOR_P (scalar_t__) ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 int DECL_LANG_SPECIFIC (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_ORIGINAL_TYPE (scalar_t__) ;





 int IDENTIFIER_TYPENAME_P (scalar_t__) ;


 int const NEXT_CODE (scalar_t__) ;

 scalar_t__ NULL_TREE ;

 int OVL_CHAIN (scalar_t__) ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;






 int TEMPLATE_PARM_INDEX ;

 int TFF_DECL_SPECIFIERS ;
 int TFF_EXPR_IN_PARENS ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;


 int TYPE_P (scalar_t__) ;



 scalar_t__ USING_DECL_SCOPE (scalar_t__) ;

 int VTABLE_NAME_P (scalar_t__) ;
 int cxx_pp ;
 int dump_expr (scalar_t__,int) ;
 int dump_function_decl (scalar_t__,int) ;
 int dump_global_iord (scalar_t__) ;
 int dump_scope (int ,int) ;
 int dump_simple_decl (scalar_t__,scalar_t__,int) ;
 int dump_template_argument_list (scalar_t__,int) ;
 int dump_template_decl (scalar_t__,int) ;
 int dump_type (scalar_t__,int) ;
 int gcc_assert (int ) ;
 int gcc_unreachable () ;
 scalar_t__ get_first_fn (scalar_t__) ;
 int is_overloaded_fn (scalar_t__) ;
 int pp_cxx_begin_template_argument_list (int ) ;
 int pp_cxx_colon_colon (int ) ;
 int pp_cxx_complement (int ) ;
 int pp_cxx_declaration (int ,scalar_t__) ;
 int pp_cxx_end_template_argument_list (int ) ;
 int pp_cxx_identifier (int ,char*) ;
 int pp_cxx_left_bracket (int ) ;
 int pp_cxx_right_bracket (int ) ;
 int pp_cxx_tree_identifier (int ,scalar_t__) ;
 int pp_expression (int ,scalar_t__) ;
 int pp_identifier (int ,char*) ;
 int pp_string (int ,char*) ;
 int pp_type_id (int ,scalar_t__) ;
 int pp_unsupported_tree (int ,scalar_t__) ;

__attribute__((used)) static void
dump_decl (tree t, int flags)
{
  if (t == NULL_TREE)
    return;

  switch (TREE_CODE (t))
    {
    case 133:

      if (DECL_ARTIFICIAL (t))
 {
   if ((flags & TFF_DECL_SPECIFIERS)
       && TREE_CODE (TREE_TYPE (t)) == 134)

     pp_cxx_identifier (cxx_pp, "class");

   dump_type (TREE_TYPE (t), flags);
   break;
 }
      if (flags & TFF_DECL_SPECIFIERS)
 pp_cxx_identifier (cxx_pp, "typedef");
      dump_simple_decl (t, DECL_ORIGINAL_TYPE (t)
   ? DECL_ORIGINAL_TYPE (t) : TREE_TYPE (t),
   flags);
      break;

    case 128:
      if (DECL_NAME (t) && VTABLE_NAME_P (DECL_NAME (t)))
 {
   pp_string (cxx_pp, "vtable for ");
   gcc_assert (TYPE_P (DECL_CONTEXT (t)));
   dump_type (DECL_CONTEXT (t), flags);
   break;
 }

    case 147:
    case 140:
      dump_simple_decl (t, TREE_TYPE (t), flags);
      break;

    case 138:
      pp_string (cxx_pp, "<return value> ");
      dump_simple_decl (t, TREE_TYPE (t), flags);
      break;

    case 143:
      if (flags & TFF_DECL_SPECIFIERS)
 pp_cxx_declaration (cxx_pp, t);
      else
 {
   dump_scope (CP_DECL_CONTEXT (t), flags);
   if (DECL_NAME (t) == NULL_TREE)
     pp_identifier (cxx_pp, "<unnamed>");
   else
     pp_cxx_tree_identifier (cxx_pp, DECL_NAME (t));
 }
      break;

    case 137:
      pp_expression (cxx_pp, t);
      break;

    case 153:
      dump_decl (TREE_OPERAND (t, 0), flags);
      pp_cxx_left_bracket (cxx_pp);
      dump_decl (TREE_OPERAND (t, 1), flags);
      pp_cxx_right_bracket (cxx_pp);
      break;


    case 139:
    case 130:
    case 149:
      dump_type (t, flags);
      break;

    case 151:


      pp_cxx_complement (cxx_pp);
      dump_type (TREE_OPERAND (t, 0), flags);
      break;

    case 132:
      gcc_unreachable ();
      break;



    case 145:
      if (IDENTIFIER_TYPENAME_P (t))
 {
   pp_cxx_identifier (cxx_pp, "operator");

   dump_type (TREE_TYPE (t), flags);
   break;
 }
      else
 pp_cxx_tree_identifier (cxx_pp, t);
      break;

    case 141:
      if (OVL_CHAIN (t))
 {
   t = OVL_CURRENT (t);
   if (DECL_CLASS_SCOPE_P (t))
     {
       dump_type (DECL_CONTEXT (t), flags);
       pp_cxx_colon_colon (cxx_pp);
     }
   else if (DECL_CONTEXT (t))
     {
       dump_decl (DECL_CONTEXT (t), flags);
       pp_cxx_colon_colon (cxx_pp);
     }
   dump_decl (DECL_NAME (t), flags);
   break;
 }



      t = OVL_CURRENT (t);


    case 146:
      if (! DECL_LANG_SPECIFIC (t))
 pp_identifier (cxx_pp, "<built-in>");
      else if (DECL_GLOBAL_CTOR_P (t) || DECL_GLOBAL_DTOR_P (t))
 dump_global_iord (t);
      else
 dump_function_decl (t, flags);
      break;

    case 136:
      dump_template_decl (t, flags);
      break;

    case 135:
      {
 tree name = TREE_OPERAND (t, 0);

 if (is_overloaded_fn (name))
   name = DECL_NAME (get_first_fn (name));
 dump_decl (name, flags);
 pp_cxx_begin_template_argument_list (cxx_pp);
 if (TREE_OPERAND (t, 1))
   dump_template_argument_list (TREE_OPERAND (t, 1), flags);
 pp_cxx_end_template_argument_list (cxx_pp);
      }
      break;

    case 144:
      pp_cxx_tree_identifier (cxx_pp, DECL_NAME (t));
      break;

    case 150:
      if ((TREE_TYPE (t) != NULL_TREE && NEXT_CODE (t) == 149)
   || (DECL_INITIAL (t) &&
       TREE_CODE (DECL_INITIAL (t)) == TEMPLATE_PARM_INDEX))
 dump_simple_decl (t, TREE_TYPE (t), flags);
      else if (DECL_NAME (t))
 dump_decl (DECL_NAME (t), flags);
      else if (DECL_INITIAL (t))
 dump_expr (DECL_INITIAL (t), flags | TFF_EXPR_IN_PARENS);
      else
 pp_identifier (cxx_pp, "<enumerator>");
      break;

    case 129:
      pp_cxx_identifier (cxx_pp, "using");
      dump_type (USING_DECL_SCOPE (t), flags);
      pp_cxx_colon_colon (cxx_pp);
      dump_decl (DECL_NAME (t), flags);
      break;

    case 152:
      dump_decl (BASELINK_FUNCTIONS (t), flags);
      break;

    case 142:
      dump_expr (t, flags);
      break;

    case 134:
      if (flags & TFF_DECL_SPECIFIERS)
 pp_cxx_declaration (cxx_pp, t);
      else
 pp_type_id (cxx_pp, t);
      break;

    case 131:
      dump_type (t, flags);
      break;

    default:
      pp_unsupported_tree (cxx_pp, t);


    case 148:
      pp_identifier (cxx_pp, "<declaration error>");
      break;
    }
}
