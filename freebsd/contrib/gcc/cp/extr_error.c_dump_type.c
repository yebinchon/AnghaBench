
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;



 scalar_t__ BINFO_TYPE (scalar_t__) ;




 scalar_t__ DECL_NAME (int ) ;
 scalar_t__ DECL_ORIGINAL_TYPE (scalar_t__) ;







 scalar_t__ NULL_TREE ;
 scalar_t__ TEMPLATE_TYPE_PARM_INDEX (scalar_t__) ;
 int TFF_CHASE_TYPEDEF ;
 int TFF_DECL_SPECIFIERS ;
 int TFF_EXPR_IN_PARENS ;

 int TREE_CODE (scalar_t__) ;

 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPENAME_IS_CLASS_P (scalar_t__) ;
 int TYPENAME_IS_ENUM_P (scalar_t__) ;


 int TYPEOF_TYPE_EXPR (scalar_t__) ;
 scalar_t__ TYPE_CONTEXT (scalar_t__) ;

 scalar_t__ TYPE_IDENTIFIER (scalar_t__) ;
 int TYPE_NAME (scalar_t__) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (scalar_t__) ;
 scalar_t__ TYPE_TI_ARGS (scalar_t__) ;





 int cxx_pp ;
 int dump_aggr_type (scalar_t__,int) ;
 int dump_decl (scalar_t__,int) ;
 int dump_expr (int ,int) ;
 int dump_parameters (scalar_t__,int) ;
 int dump_template_argument_list (scalar_t__,int) ;
 int dump_type_prefix (scalar_t__,int) ;
 int dump_type_suffix (scalar_t__,int) ;
 int dump_typename (scalar_t__,int) ;
 int pp_cxx_begin_template_argument_list (int ) ;
 int pp_cxx_canonical_template_parameter (int ,scalar_t__) ;
 int pp_cxx_colon_colon (int ) ;
 int pp_cxx_cv_qualifier_seq (int ,scalar_t__) ;
 int pp_cxx_end_template_argument_list (int ) ;
 int pp_cxx_identifier (int ,char*) ;
 int pp_cxx_left_paren (int ) ;
 int pp_cxx_right_paren (int ) ;
 int pp_cxx_tree_identifier (int ,scalar_t__) ;
 int pp_cxx_whitespace (int ) ;
 int pp_identifier (int ,char*) ;
 int pp_type_specifier_seq (int ,scalar_t__) ;
 int pp_unsupported_tree (int ,scalar_t__) ;

__attribute__((used)) static void
dump_type (tree t, int flags)
{
  if (t == NULL_TREE)
    return;

  if (TYPE_PTRMEMFUNC_P (t))
    goto offset_type;

  switch (TREE_CODE (t))
    {
    case 130:
      pp_identifier (cxx_pp, "<unresolved overloaded function type>");
      break;

    case 136:

      dump_parameters (t, flags);
      break;

    case 149:
      pp_cxx_tree_identifier (cxx_pp, t);
      break;

    case 137:
      dump_type (BINFO_TYPE (t), flags);
      break;

    case 142:
    case 131:
    case 152:
      dump_aggr_type (t, flags);
      break;

    case 133:
      if (flags & TFF_CHASE_TYPEDEF)
 {
   dump_type (DECL_ORIGINAL_TYPE (t)
       ? DECL_ORIGINAL_TYPE (t) : TREE_TYPE (t), flags);
   break;
 }


    case 140:
    case 146:
      dump_decl (t, flags & ~TFF_DECL_SPECIFIERS);
      break;

    case 148:
    case 143:
    case 128:
    case 155:
    case 153:
    case 129:
      pp_type_specifier_seq (cxx_pp, t);
      break;

    case 139:

      if (TYPE_IDENTIFIER (t))
 pp_cxx_tree_identifier (cxx_pp, TYPE_IDENTIFIER (t));
      else
 pp_cxx_canonical_template_parameter (cxx_pp, t);
      break;

    case 154:
      {
 tree args = TYPE_TI_ARGS (t);
 pp_cxx_cv_qualifier_seq (cxx_pp, t);
 pp_cxx_tree_identifier (cxx_pp, TYPE_IDENTIFIER (t));
 pp_cxx_begin_template_argument_list (cxx_pp);
 dump_template_argument_list (args, flags);
 pp_cxx_end_template_argument_list (cxx_pp);
      }
      break;

    case 138:
      pp_cxx_cv_qualifier_seq (cxx_pp, t);
      if (TYPE_IDENTIFIER (t))
 pp_cxx_tree_identifier (cxx_pp, TYPE_IDENTIFIER (t));
      else
 pp_cxx_canonical_template_parameter
   (cxx_pp, TEMPLATE_TYPE_PARM_INDEX (t));
      break;



    case 157:
    case 144:

    case 156:
    case 141:
    case 145:
    offset_type:
    case 150:
    case 147:
    {
      dump_type_prefix (t, flags);
      dump_type_suffix (t, flags);
      break;
    }
    case 135:
      pp_cxx_cv_qualifier_seq (cxx_pp, t);
      pp_cxx_identifier (cxx_pp,
    TYPENAME_IS_ENUM_P (t) ? "enum"
    : TYPENAME_IS_CLASS_P (t) ? "class"
    : "typename");
      dump_typename (t, flags);
      break;

    case 132:
      dump_type (TYPE_CONTEXT (t), flags);
      pp_cxx_colon_colon (cxx_pp);
      pp_cxx_identifier (cxx_pp, "template");
      dump_type (DECL_NAME (TYPE_NAME (t)), flags);
      break;

    case 134:
      pp_cxx_identifier (cxx_pp, "__typeof__");
      pp_cxx_whitespace (cxx_pp);
      pp_cxx_left_paren (cxx_pp);
      dump_expr (TYPEOF_TYPE_EXPR (t), flags & ~TFF_EXPR_IN_PARENS);
      pp_cxx_right_paren (cxx_pp);
      break;

    default:
      pp_unsupported_tree (cxx_pp, t);


    case 151:
      pp_identifier (cxx_pp, "<type error>");
      break;
    }
}
