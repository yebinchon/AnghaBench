
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int ADDR_EXPR ;
 scalar_t__ BLOCK_POINTER_TYPE ;
 int COMPARE_BASE ;
 int COMPARE_DERIVED ;
 scalar_t__ COMPLETE_TYPE_P (scalar_t__) ;
 scalar_t__ CP_INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ INTEGER_TYPE ;
 scalar_t__ INTEGRAL_OR_ENUMERATION_TYPE_P (scalar_t__) ;
 scalar_t__ INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ METHOD_TYPE ;
 scalar_t__ NOP_EXPR ;
 int POINTER_SIZE ;
 scalar_t__ POINTER_TYPE ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ STRICT_ALIGNMENT ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_ALIGN (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (scalar_t__) ;
 scalar_t__ TYPE_PTRFN_P (scalar_t__) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_P (scalar_t__) ;
 scalar_t__ TYPE_PTROBV_P (scalar_t__) ;
 scalar_t__ TYPE_PTR_P (scalar_t__) ;
 scalar_t__ TYPE_UNSIGNED (scalar_t__) ;
 scalar_t__ VECTOR_TYPE ;
 scalar_t__ VOID_TYPE_P (scalar_t__) ;
 scalar_t__ build_indirect_ref (scalar_t__,int ) ;
 int build_nop (scalar_t__,scalar_t__) ;
 scalar_t__ build_pointer_type (scalar_t__) ;
 scalar_t__ build_unary_op (int ,scalar_t__,int ) ;
 scalar_t__ c_common_type_for_size (int ,int) ;
 int check_for_casting_away_constness (scalar_t__,scalar_t__,int (*) (char*,scalar_t__,scalar_t__),char*) ;
 scalar_t__ comptypes (scalar_t__,scalar_t__,int) ;
 scalar_t__ convert_member_func_to_ptr (scalar_t__,scalar_t__) ;
 int convert_to_integer (scalar_t__,scalar_t__) ;
 int convert_to_vector (scalar_t__,scalar_t__) ;
 scalar_t__ cp_convert (scalar_t__,scalar_t__) ;
 scalar_t__ decay_conversion (scalar_t__) ;
 int error (char*,scalar_t__,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ error_operand_p (scalar_t__) ;
 scalar_t__ fold_if_not_in_template (int ) ;
 scalar_t__ objc_is_id (scalar_t__) ;
 scalar_t__ pedantic ;
 int pedwarn (char*,scalar_t__,scalar_t__) ;
 int real_lvalue_p (scalar_t__) ;
 int strict_aliasing_warning (scalar_t__,scalar_t__,scalar_t__) ;
 int used_types_insert (scalar_t__) ;
 scalar_t__ warn_cast_align ;
 int warn_strict_aliasing ;
 int warning (int ,char*,...) ;

__attribute__((used)) static tree
build_reinterpret_cast_1 (tree type, tree expr, bool c_cast_p,
     bool *valid_p)
{
  tree intype;


  if (valid_p)
    *valid_p = 1;

  if (type == error_mark_node || error_operand_p (expr))
    return error_mark_node;

  intype = TREE_TYPE (expr);


  used_types_insert (type);






  if (TREE_CODE (type) == REFERENCE_TYPE)
    {
      if (! real_lvalue_p (expr))
 {
   error ("invalid cast of an rvalue expression of type "
   "%qT to type %qT",
   intype, type);
   return error_mark_node;
 }




      if (TYPE_PTR_P (intype)
   && (comptypes (TREE_TYPE (intype), TREE_TYPE (type),
    COMPARE_BASE | COMPARE_DERIVED)))
 warning (0, "casting %qT to %qT does not dereference pointer",
   intype, type);

      expr = build_unary_op (ADDR_EXPR, expr, 0);
      if (expr != error_mark_node)
 expr = build_reinterpret_cast_1
   (build_pointer_type (TREE_TYPE (type)), expr, c_cast_p,
    valid_p);
      if (expr != error_mark_node)
 expr = build_indirect_ref (expr, 0);
      return expr;
    }






  if ((TYPE_PTRMEMFUNC_P (intype)
       || TREE_CODE (intype) == METHOD_TYPE)
      && TYPE_PTR_P (type)
      && (TREE_CODE (TREE_TYPE (type)) == FUNCTION_TYPE
   || VOID_TYPE_P (TREE_TYPE (type))))
    return convert_member_func_to_ptr (type, expr);




  expr = decay_conversion (expr);



  if (TREE_CODE (expr) == NOP_EXPR
      && TREE_TYPE (expr) == TREE_TYPE (TREE_OPERAND (expr, 0)))
    expr = TREE_OPERAND (expr, 0);

  if (error_operand_p (expr))
    return error_mark_node;

  intype = TREE_TYPE (expr);




  if (CP_INTEGRAL_TYPE_P (type) && TYPE_PTR_P (intype))
    {
      if (TYPE_PRECISION (type) < TYPE_PRECISION (intype))
 pedwarn ("cast from %qT to %qT loses precision",
   intype, type);
    }



  else if (TYPE_PTR_P (type) && INTEGRAL_OR_ENUMERATION_TYPE_P (intype))

    ;

  else if (TREE_CODE (type) == INTEGER_TYPE && TREE_CODE (intype) == BLOCK_POINTER_TYPE)
    {
      if (TYPE_PRECISION (type) < TYPE_PRECISION (intype))
 pedwarn ("cast from %qT to %qT loses precision",
   intype, type);
    }
  else if (TREE_CODE (type) == BLOCK_POINTER_TYPE && TREE_CODE (intype) == INTEGER_TYPE)

    ;
  else if (TREE_CODE (type) == BLOCK_POINTER_TYPE && TREE_CODE (intype) == BLOCK_POINTER_TYPE)

    ;
  else if (TREE_CODE (intype) == BLOCK_POINTER_TYPE
    && (objc_is_id (type)
        || (TREE_CODE (type) == POINTER_TYPE && VOID_TYPE_P (TREE_TYPE (type)))))

    ;
  else if (TREE_CODE (type) == BLOCK_POINTER_TYPE
    && TREE_CODE (intype) == POINTER_TYPE
    && (objc_is_id (intype) || VOID_TYPE_P (TREE_TYPE (intype))))

    ;

  else if ((TYPE_PTRFN_P (type) && TYPE_PTRFN_P (intype))
    || (TYPE_PTRMEMFUNC_P (type) && TYPE_PTRMEMFUNC_P (intype)))
    return fold_if_not_in_template (build_nop (type, expr));
  else if ((TYPE_PTRMEM_P (type) && TYPE_PTRMEM_P (intype))
    || (TYPE_PTROBV_P (type) && TYPE_PTROBV_P (intype)))
    {
      tree sexpr = expr;

      if (!c_cast_p)
 check_for_casting_away_constness (intype, type, error,
       "reinterpret_cast");

      if (STRICT_ALIGNMENT && warn_cast_align
   && !VOID_TYPE_P (type)
   && TREE_CODE (TREE_TYPE (intype)) != FUNCTION_TYPE
   && COMPLETE_TYPE_P (TREE_TYPE (type))
   && COMPLETE_TYPE_P (TREE_TYPE (intype))
   && TYPE_ALIGN (TREE_TYPE (type)) > TYPE_ALIGN (TREE_TYPE (intype)))
 warning (0, "cast from %qT to %qT increases required alignment of "
   "target type",
   intype, type);



      STRIP_NOPS (sexpr);
      if (warn_strict_aliasing <= 2)
 strict_aliasing_warning (intype, type, sexpr);

      return fold_if_not_in_template (build_nop (type, expr));
    }
  else if ((TYPE_PTRFN_P (type) && TYPE_PTROBV_P (intype))
    || (TYPE_PTRFN_P (intype) && TYPE_PTROBV_P (type)))
    {
      if (pedantic)




 warning (0, "ISO C++ forbids casting between pointer-to-function and pointer-to-object");
      return fold_if_not_in_template (build_nop (type, expr));
    }
  else if (TREE_CODE (type) == VECTOR_TYPE)
    return fold_if_not_in_template (convert_to_vector (type, expr));
  else if (TREE_CODE (intype) == VECTOR_TYPE && INTEGRAL_TYPE_P (type))
    return fold_if_not_in_template (convert_to_integer (type, expr));
  else
    {
      if (valid_p)
 *valid_p = 0;
      error ("invalid cast from type %qT to type %qT", intype, type);
      return error_mark_node;
    }


  if (TREE_CODE (type) == INTEGER_TYPE
      && TREE_CODE (intype) == POINTER_TYPE
      && TYPE_PRECISION (type) > TYPE_PRECISION (intype)
      && TYPE_UNSIGNED (type))
    expr = cp_convert (c_common_type_for_size (POINTER_SIZE, 1), expr);


  return cp_convert (type, expr);
}
