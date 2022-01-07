
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code_class { ____Placeholder_tree_code_class } tree_code_class ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ ADDR_EXPR ;
 int const AGGR_INIT_EXPR ;
 int AGGR_INIT_VIA_CTOR_P (scalar_t__) ;

 int COMPLETE_TYPE_P (int ) ;
 int const COMPONENT_REF ;


 int CONVERT_EXPR ;

 int INIT_EXPR ;
 int MODIFY_EXPR ;


 scalar_t__ NULL_TREE ;
 int OPT_Waddress ;
 int OPT_Wunused_value ;
 int POSTDECREMENT_EXPR ;
 int POSTINCREMENT_EXPR ;
 int PREDECREMENT_EXPR ;
 int PREINCREMENT_EXPR ;
 int const PSEUDO_DTOR_EXPR ;
 int const REFERENCE_TYPE ;

 int TARGET_EXPR_IMPLICIT_P (scalar_t__) ;
 scalar_t__ TARGET_EXPR_INITIAL (scalar_t__) ;
 int TREE_ADDRESSABLE (scalar_t__) ;
 int const TREE_CODE (scalar_t__) ;
 int TREE_CODE_CLASS (int) ;
 int TREE_NO_WARNING (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TYPE_HAS_TRIVIAL_DESTRUCTOR (scalar_t__) ;
 int TYPE_VOLATILE (scalar_t__) ;

 scalar_t__ VOID_TYPE_P (scalar_t__) ;
 scalar_t__ build1 (int ,int ,scalar_t__) ;
 scalar_t__ build2 (int const,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build3 (int const,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int complete_type (scalar_t__) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ invalid_nonstatic_memfn_p (scalar_t__) ;
 scalar_t__ is_overloaded_fn (scalar_t__) ;
 int pedwarn (char*,char const*) ;
 int processing_template_decl ;
 int tcc_binary ;
 int tcc_comparison ;
 int tcc_unary ;
 scalar_t__ type_unknown_p (scalar_t__) ;
 int void_type_node ;
 scalar_t__ void_zero_node ;
 scalar_t__ warn_unused_value ;
 int warning (int ,char*,...) ;

tree
convert_to_void (tree expr, const char *implicit)
{
  if (expr == error_mark_node
      || TREE_TYPE (expr) == error_mark_node)
    return error_mark_node;
  if (!TREE_TYPE (expr))
    return expr;
  if (invalid_nonstatic_memfn_p (expr))
    return error_mark_node;
  if (TREE_CODE (expr) == PSEUDO_DTOR_EXPR)
    {
      error ("pseudo-destructor is not called");
      return error_mark_node;
    }
  if (VOID_TYPE_P (TREE_TYPE (expr)))
    return expr;
  switch (TREE_CODE (expr))
    {
    case 133:
      {

 tree op1 = TREE_OPERAND (expr,1);
 tree op2 = TREE_OPERAND (expr,2);
 tree new_op1 = convert_to_void
   (op1, (implicit && !TREE_SIDE_EFFECTS (op2)
   ? "second operand of conditional" : ((void*)0)));
 tree new_op2 = convert_to_void
   (op2, (implicit && !TREE_SIDE_EFFECTS (op1)
   ? "third operand of conditional" : ((void*)0)));

 expr = build3 (133, TREE_TYPE (new_op1),
         TREE_OPERAND (expr, 0), new_op1, new_op2);
 break;
      }

    case 134:
      {

 tree op1 = TREE_OPERAND (expr,1);
 tree new_op1 = convert_to_void
   (op1, (implicit && !TREE_NO_WARNING (expr)
   ? "right-hand operand of comma" : ((void*)0)));

 if (new_op1 != op1)
   {
     tree t = build2 (134, TREE_TYPE (new_op1),
        TREE_OPERAND (expr, 0), new_op1);
     expr = t;
   }

 break;
      }

    case 131:
    case 130:

      break;

    case 135:
      break;

    case 132:
      {
 tree type = TREE_TYPE (expr);
 int is_reference = TREE_CODE (TREE_TYPE (TREE_OPERAND (expr, 0)))
      == REFERENCE_TYPE;
 int is_volatile = TYPE_VOLATILE (type);
 int is_complete = COMPLETE_TYPE_P (complete_type (type));


 if (is_volatile && !is_complete)
   warning (0, "object of incomplete type %qT will not be accessed in %s",
     type, implicit ? implicit : "void context");


 else if (is_volatile && (is_reference || TREE_ADDRESSABLE (type)))
   warning (0, "object of type %qT will not be accessed in %s",
     TREE_TYPE (TREE_OPERAND (expr, 0)),
     implicit ? implicit : "void context");
 if (is_reference || !is_volatile || !is_complete || TREE_ADDRESSABLE (type))
   expr = TREE_OPERAND (expr, 0);

 break;
      }

    case 128:
      {

 tree type = TREE_TYPE (expr);
 int is_complete = COMPLETE_TYPE_P (complete_type (type));

 if (TYPE_VOLATILE (type) && !is_complete)
   warning (0, "object %qE of incomplete type %qT will not be accessed in %s",
     expr, type, implicit ? implicit : "void context");
 break;
      }

    case 129:




      if (TARGET_EXPR_IMPLICIT_P (expr)
   && TYPE_HAS_TRIVIAL_DESTRUCTOR (TREE_TYPE (expr)))
 {
   tree init = TARGET_EXPR_INITIAL (expr);
   if (TREE_CODE (init) == AGGR_INIT_EXPR
       && !AGGR_INIT_VIA_CTOR_P (init))
     {
       tree fn = TREE_OPERAND (init, 0);
       expr = build3 (135, TREE_TYPE (TREE_TYPE (TREE_TYPE (fn))),
        fn, TREE_OPERAND (init, 1), NULL_TREE);
     }
 }
      break;

    default:;
    }
  {
    tree probe = expr;

    if (TREE_CODE (probe) == ADDR_EXPR)
      probe = TREE_OPERAND (expr, 0);
    if (type_unknown_p (probe))
      {


 pedwarn ("%s cannot resolve address of overloaded function",
      implicit ? implicit : "void cast");
 expr = void_zero_node;
      }
    else if (implicit && probe == expr && is_overloaded_fn (probe))
      {

 warning (OPT_Waddress, "%s is a reference, not call, to function %qE",
   implicit, expr);
 if (TREE_CODE (expr) == COMPONENT_REF)
   expr = TREE_OPERAND (expr, 0);
      }
  }

  if (expr != error_mark_node && !VOID_TYPE_P (TREE_TYPE (expr)))
    {
      if (implicit
   && warn_unused_value
   && !TREE_NO_WARNING (expr)
   && !processing_template_decl)
 {


   if (!TREE_SIDE_EFFECTS (expr))
     warning (OPT_Wunused_value, "%s has no effect", implicit);
   else
     {
       tree e;
       enum tree_code code;
       enum tree_code_class class;

       e = expr;
       while (TREE_CODE (e) == 130)
  e = TREE_OPERAND (e, 0);

       code = TREE_CODE (e);
       class = TREE_CODE_CLASS (code);
       if (class == tcc_comparison
     || class == tcc_unary
     || (class == tcc_binary
         && !(code == MODIFY_EXPR
       || code == INIT_EXPR
       || code == PREDECREMENT_EXPR
       || code == PREINCREMENT_EXPR
       || code == POSTDECREMENT_EXPR
       || code == POSTINCREMENT_EXPR)))
  warning (OPT_Wunused_value, "value computed is not used");
     }
 }
      expr = build1 (CONVERT_EXPR, void_type_node, expr);
    }
  if (! TREE_SIDE_EFFECTS (expr))
    expr = void_zero_node;
  return expr;
}
