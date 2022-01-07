
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int ADDR_EXPR ;
 int ARRAY_TYPE ;
 int CLASS_TYPE_P (scalar_t__) ;
 int COMPOUND_EXPR ;
 int CONSTRUCTOR ;
 int FUNCTION_TYPE ;
 int INDIRECT_REF ;
 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_STATIC (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 int VAR_DECL ;
 int VOID_TYPE ;
 scalar_t__ build2 (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_address (scalar_t__) ;
 scalar_t__ build_nop (scalar_t__,scalar_t__) ;
 scalar_t__ build_pointer_type (scalar_t__) ;
 scalar_t__ build_unary_op (int ,scalar_t__,int) ;
 scalar_t__ convert_bitfield_to_declared_type (scalar_t__) ;
 scalar_t__ cp_convert (scalar_t__,scalar_t__) ;
 scalar_t__ cp_type_quals (scalar_t__) ;
 int cxx_incomplete_type_error (scalar_t__,scalar_t__) ;
 int cxx_mark_addressable (scalar_t__) ;
 scalar_t__ decl_constant_value (scalar_t__) ;
 int error (char*) ;
 scalar_t__ error_mark_node ;
 scalar_t__ error_operand_p (scalar_t__) ;
 scalar_t__ invalid_nonstatic_memfn_p (scalar_t__) ;
 scalar_t__ is_overloaded_fn (scalar_t__) ;
 int lvalue_p (scalar_t__) ;
 scalar_t__ type_unknown_p (scalar_t__) ;

tree
decay_conversion (tree exp)
{
  tree type;
  enum tree_code code;

  type = TREE_TYPE (exp);
  if (type == error_mark_node)
    return error_mark_node;

  if (type_unknown_p (exp))
    {
      cxx_incomplete_type_error (exp, TREE_TYPE (exp));
      return error_mark_node;
    }

  exp = decl_constant_value (exp);
  if (error_operand_p (exp))
    return error_mark_node;



  code = TREE_CODE (type);
  if (code == VOID_TYPE)
    {
      error ("void value not ignored as it ought to be");
      return error_mark_node;
    }
  if (invalid_nonstatic_memfn_p (exp))
    return error_mark_node;
  if (code == FUNCTION_TYPE || is_overloaded_fn (exp))
    return build_unary_op (ADDR_EXPR, exp, 0);
  if (code == ARRAY_TYPE)
    {
      tree adr;
      tree ptrtype;

      if (TREE_CODE (exp) == INDIRECT_REF)
 return build_nop (build_pointer_type (TREE_TYPE (type)),
     TREE_OPERAND (exp, 0));

      if (TREE_CODE (exp) == COMPOUND_EXPR)
 {
   tree op1 = decay_conversion (TREE_OPERAND (exp, 1));
   return build2 (COMPOUND_EXPR, TREE_TYPE (op1),
    TREE_OPERAND (exp, 0), op1);
 }

      if (!lvalue_p (exp)
   && ! (TREE_CODE (exp) == CONSTRUCTOR && TREE_STATIC (exp)))
 {
   error ("invalid use of non-lvalue array");
   return error_mark_node;
 }

      ptrtype = build_pointer_type (TREE_TYPE (type));

      if (TREE_CODE (exp) == VAR_DECL)
 {
   if (!cxx_mark_addressable (exp))
     return error_mark_node;
   adr = build_nop (ptrtype, build_address (exp));
   return adr;
 }


      adr = build_unary_op (ADDR_EXPR, exp, 1);
      return cp_convert (ptrtype, adr);
    }
  exp = convert_bitfield_to_declared_type (exp);







  type = TREE_TYPE (exp);
  if (!CLASS_TYPE_P (type) && cp_type_quals (type))
    exp = build_nop (TYPE_MAIN_VARIANT (type), exp);

  return exp;
}
