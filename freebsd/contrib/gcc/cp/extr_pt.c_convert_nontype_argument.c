
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ ARRAY_TYPE ;
 int CONV_IMPLICIT ;
 int DECL_EXTERNAL_LINKAGE_P (char*) ;
 scalar_t__ DECL_P (char*) ;
 scalar_t__ DECL_TEMPLATE_PARM_P (char*) ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGRAL_TYPE_P (char*) ;
 int LOOKUP_PROTECT ;
 scalar_t__ NOP_EXPR ;
 char* NULL_TREE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ STRING_CST ;
 int STRIP_NOPS (char*) ;
 scalar_t__ TREE_CODE (char*) ;
 char* TREE_OPERAND (char*,int ) ;
 char* TREE_TYPE (char*) ;
 scalar_t__ TYPE_PTRFN_P (char*) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (char*) ;
 scalar_t__ TYPE_PTRMEM_P (char*) ;
 scalar_t__ TYPE_PTROBV_P (char*) ;
 scalar_t__ TYPE_REFFN_P (char*) ;
 scalar_t__ TYPE_REF_OBJ_P (char*) ;
 scalar_t__ VAR_DECL ;
 int at_least_as_qualified_p (char*,char*) ;
 int build_address (char*) ;
 char* build_nop (char*,int ) ;
 int can_convert (char*,char*) ;
 char* convert_nontype_argument_function (char*,char*) ;
 char* decay_conversion (char*) ;
 int error (char*,char*,char*,...) ;
 char* error_mark_node ;
 scalar_t__ error_operand_p (char*) ;
 char* fold (char*) ;
 char* fold_decl_constant_value (char*) ;
 char* fold_non_dependent_expr (char*) ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int inform (char*,...) ;
 char* instantiate_type (char*,char*,int ) ;
 char* ocp_convert (char*,char*,int ,int ) ;
 char* perform_qualification_conversions (char*,char*) ;
 int real_lvalue_p (char*) ;
 int same_type_ignoring_top_level_qualifiers_p (char*,char*) ;
 int same_type_p (char*,char*) ;
 int tf_none ;
 int type_unknown_p (char*) ;

__attribute__((used)) static tree
convert_nontype_argument (tree type, tree expr)
{
  tree expr_type;






  if (TREE_CODE (expr) == STRING_CST)
    {
      error ("%qE is not a valid template argument for type %qT "
      "because string literals can never be used in this context",
      expr, type);
      return NULL_TREE;
    }
  expr = fold_non_dependent_expr (expr);
  if (error_operand_p (expr))
    return error_mark_node;
  expr_type = TREE_TYPE (expr);
  if (TREE_CODE (expr) == NOP_EXPR)
    {
      if (TYPE_REF_OBJ_P (type) || TYPE_REFFN_P (type))
 {




   tree addr = TREE_OPERAND (expr, 0);
   gcc_assert (TREE_CODE (expr_type) == REFERENCE_TYPE);
   gcc_assert (TREE_CODE (addr) == ADDR_EXPR);
   gcc_assert (TREE_CODE (TREE_TYPE (addr)) == POINTER_TYPE);
   gcc_assert (same_type_ignoring_top_level_qualifiers_p
        (TREE_TYPE (expr_type),
         TREE_TYPE (TREE_TYPE (addr))));

   expr = TREE_OPERAND (addr, 0);
   expr_type = TREE_TYPE (expr);
 }




      else if (TYPE_PTROBV_P (type))
 {
   STRIP_NOPS (expr);
   gcc_assert (TREE_CODE (expr) == ADDR_EXPR);
   gcc_assert (TREE_CODE (TREE_TYPE (expr)) == POINTER_TYPE);



   if (TREE_CODE (TREE_TYPE (TREE_OPERAND (expr, 0))) == ARRAY_TYPE)
     expr = TREE_OPERAND (expr, 0);
   expr_type = TREE_TYPE (expr);
 }
    }






  if (INTEGRAL_TYPE_P (type))
    {
      if (!INTEGRAL_TYPE_P (expr_type))
 return error_mark_node;

      expr = fold_decl_constant_value (expr);


      if (TREE_CODE (expr) != INTEGER_CST)
 {
   error ("%qE is not a valid template argument for type %qT "
   "because it is a non-constant expression", expr, type);
   return NULL_TREE;
 }




      expr = ocp_convert (type, expr, CONV_IMPLICIT, LOOKUP_PROTECT);
      if (expr == error_mark_node)
 return error_mark_node;


      expr = fold (expr);
    }





  else if (TYPE_PTROBV_P (type))
    {
      if (DECL_P (expr) && DECL_TEMPLATE_PARM_P (expr))

 ;
      else if (TREE_CODE (expr) != ADDR_EXPR
        && TREE_CODE (expr_type) != ARRAY_TYPE)
 {
   if (TREE_CODE (expr) == VAR_DECL)
     {
       error ("%qD is not a valid template argument "
       "because %qD is a variable, not the address of "
       "a variable",
       expr, expr);
       return NULL_TREE;
     }


   return error_mark_node;
 }
      else
 {
   tree decl;

   decl = ((TREE_CODE (expr) == ADDR_EXPR)
    ? TREE_OPERAND (expr, 0) : expr);
   if (TREE_CODE (decl) != VAR_DECL)
     {
       error ("%qE is not a valid template argument of type %qT "
       "because %qE is not a variable",
       expr, type, decl);
       return NULL_TREE;
     }
   else if (!DECL_EXTERNAL_LINKAGE_P (decl))
     {
       error ("%qE is not a valid template argument of type %qT "
       "because %qD does not have external linkage",
       expr, type, decl);
       return NULL_TREE;
     }
 }

      expr = decay_conversion (expr);
      if (expr == error_mark_node)
 return error_mark_node;

      expr = perform_qualification_conversions (type, expr);
      if (expr == error_mark_node)
 return error_mark_node;
    }







  else if (TYPE_REF_OBJ_P (type))
    {
      if (!same_type_ignoring_top_level_qualifiers_p (TREE_TYPE (type),
            expr_type))
 return error_mark_node;

      if (!at_least_as_qualified_p (TREE_TYPE (type), expr_type))
 {
   error ("%qE is not a valid template argument for type %qT "
   "because of conflicts in cv-qualification", expr, type);
   return NULL_TREE;
 }

      if (!real_lvalue_p (expr))
 {
   error ("%qE is not a valid template argument for type %qT "
   "because it is not an lvalue", expr, type);
   return NULL_TREE;
 }







      if (!DECL_EXTERNAL_LINKAGE_P (expr))
 {
   error ("%qE is not a valid template argument for type %qT "
   "because object %qD has not external linkage",
   expr, type, expr);
   return NULL_TREE;
 }

      expr = build_nop (type, build_address (expr));
    }







  else if (TYPE_PTRFN_P (type))
    {


      if (!type_unknown_p (expr_type))
 {
   expr = decay_conversion (expr);
   if (expr == error_mark_node)
     return error_mark_node;
 }

      expr = convert_nontype_argument_function (type, expr);
      if (!expr || expr == error_mark_node)
 return expr;
    }






  else if (TYPE_REFFN_P (type))
    {
      if (TREE_CODE (expr) == ADDR_EXPR)
 {
   error ("%qE is not a valid template argument for type %qT "
   "because it is a pointer", expr, type);
   inform ("try using %qE instead", TREE_OPERAND (expr, 0));
   return NULL_TREE;
 }

      expr = convert_nontype_argument_function (TREE_TYPE (type), expr);
      if (!expr || expr == error_mark_node)
 return expr;

      expr = build_nop (type, build_address (expr));
    }






  else if (TYPE_PTRMEMFUNC_P (type))
    {
      expr = instantiate_type (type, expr, tf_none);
      if (expr == error_mark_node)
 return error_mark_node;
      if (!same_type_p (TREE_TYPE (expr), type))
 {

   gcc_assert (can_convert (type, TREE_TYPE (expr)));
   error ("%qE is not a valid template argument for type %qT "
   "because it is of type %qT", expr, type,
   TREE_TYPE (expr));
   inform ("standard conversions are not allowed in this context");
   return NULL_TREE;
 }
    }




  else if (TYPE_PTRMEM_P (type))
    {
      expr = perform_qualification_conversions (type, expr);
      if (expr == error_mark_node)
 return expr;
    }

  else
    gcc_unreachable ();



  gcc_assert (same_type_p (type, TREE_TYPE (expr)));
  return expr;
}
