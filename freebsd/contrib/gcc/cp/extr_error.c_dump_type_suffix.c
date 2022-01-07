
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
 int const MINUS_EXPR ;

 int PLUS_EXPR ;






 int TFF_EXPR_IN_PARENS ;
 int TFF_FUNCTION_DEFAULT_ARGUMENTS ;
 int TREE_CHAIN (int ) ;
 int const TREE_CODE (int ) ;

 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;



 int TYPE_ARG_TYPES (int ) ;

 int TYPE_DOMAIN (int ) ;
 int TYPE_MAX_VALUE (int ) ;
 int TYPE_PTRMEMFUNC_FN_TYPE (int ) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (int ) ;
 int TYPE_RAISES_EXCEPTIONS (int ) ;




 int cp_build_binary_op (int ,int ,int ) ;
 int cxx_pp ;
 int dump_exception_spec (int ,int) ;
 int dump_expr (int ,int) ;
 int dump_parameters (int ,int) ;
 int fold (int ) ;
 int host_integerp (int ,int ) ;
 int integer_one_node ;
 int pp_cxx_cv_qualifier_seq (int ,int ) ;
 int pp_cxx_left_bracket (int ) ;
 int pp_cxx_right_bracket (int ) ;
 int pp_cxx_right_paren (int ) ;
 int pp_maybe_space (int ) ;
 int pp_unsupported_tree (int ,int ) ;
 int pp_wide_integer (int ,int ) ;
 int tree_low_cst (int ,int ) ;

__attribute__((used)) static void
dump_type_suffix (tree t, int flags)
{
  if (TYPE_PTRMEMFUNC_P (t))
    t = TYPE_PTRMEMFUNC_FN_TYPE (t);

  switch (TREE_CODE (t))
    {
    case 142:

    case 153:
    case 139:
    case 143:
      if (TREE_CODE (TREE_TYPE (t)) == 154)
 pp_cxx_right_paren (cxx_pp);
      dump_type_suffix (TREE_TYPE (t), flags);
      break;


    case 147:
    case 144:
      {
 tree arg;
 pp_cxx_right_paren (cxx_pp);
 arg = TYPE_ARG_TYPES (t);
 if (TREE_CODE (t) == 144)
   arg = TREE_CHAIN (arg);



 dump_parameters (arg, flags & ~TFF_FUNCTION_DEFAULT_ARGUMENTS);

 if (TREE_CODE (t) == 144)
   pp_cxx_cv_qualifier_seq
     (cxx_pp, TREE_TYPE (TREE_VALUE (TYPE_ARG_TYPES (t))));
 else
   pp_cxx_cv_qualifier_seq(cxx_pp, t);
 dump_exception_spec (TYPE_RAISES_EXCEPTIONS (t), flags);
 dump_type_suffix (TREE_TYPE (t), flags);
 break;
      }

    case 154:
      pp_maybe_space (cxx_pp);
      pp_cxx_left_bracket (cxx_pp);
      if (TYPE_DOMAIN (t))
 {
   if (host_integerp (TYPE_MAX_VALUE (TYPE_DOMAIN (t)), 0))
     pp_wide_integer
       (cxx_pp, tree_low_cst (TYPE_MAX_VALUE (TYPE_DOMAIN (t)), 0) + 1);
   else if (TREE_CODE (TYPE_MAX_VALUE (TYPE_DOMAIN (t))) == MINUS_EXPR)
     dump_expr (TREE_OPERAND (TYPE_MAX_VALUE (TYPE_DOMAIN (t)), 0),
         flags & ~TFF_EXPR_IN_PARENS);
   else
     dump_expr (fold (cp_build_binary_op
        (PLUS_EXPR, TYPE_MAX_VALUE (TYPE_DOMAIN (t)),
         integer_one_node)),
         flags & ~TFF_EXPR_IN_PARENS);
 }
      pp_cxx_right_bracket (cxx_pp);
      dump_type_suffix (TREE_TYPE (t), flags);
      break;

    case 149:
    case 146:
    case 145:
    case 152:
    case 141:
    case 140:
    case 137:
    case 138:
    case 151:
    case 136:
    case 132:
    case 135:
    case 131:
    case 130:
    case 128:
    case 134:
    case 150:
    case 129:
    case 133:
      break;

    default:
      pp_unsupported_tree (cxx_pp, t);
    case 148:


      break;
    }
}
