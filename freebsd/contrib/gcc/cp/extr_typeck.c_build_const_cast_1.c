
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int ADDR_EXPR ;
 scalar_t__ FUNCTION_TYPE ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 int POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PTRMEM_P (scalar_t__) ;
 scalar_t__ TYPE_PTR_P (scalar_t__) ;
 scalar_t__ build_nop (scalar_t__,scalar_t__) ;
 scalar_t__ build_pointer_type (scalar_t__) ;
 scalar_t__ build_unary_op (int ,scalar_t__,int ) ;
 int check_for_casting_away_constness (scalar_t__,scalar_t__,int ,char*) ;
 scalar_t__ comp_ptr_ttypes_const (scalar_t__,scalar_t__) ;
 scalar_t__ convert_from_reference (scalar_t__) ;
 scalar_t__ decay_conversion (scalar_t__) ;
 int error (char*,scalar_t__,...) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 int processing_template_decl ;
 int real_lvalue_p (scalar_t__) ;
 scalar_t__ type_decays_to (scalar_t__) ;
 int used_types_insert (scalar_t__) ;
 scalar_t__ warn_cast_qual ;
 int warning0 ;

__attribute__((used)) static tree
build_const_cast_1 (tree dst_type, tree expr, bool complain,
      bool *valid_p)
{
  tree src_type;
  tree reference_type;



  gcc_assert (dst_type != error_mark_node);


  gcc_assert (!processing_template_decl);


  if (valid_p)
    *valid_p = 0;

  if (!POINTER_TYPE_P (dst_type) && !TYPE_PTRMEM_P (dst_type))
    {
      if (complain)
 error ("invalid use of const_cast with type %qT, "
        "which is not a pointer, "
        "reference, nor a pointer-to-data-member type", dst_type);
      return error_mark_node;
    }

  if (TREE_CODE (TREE_TYPE (dst_type)) == FUNCTION_TYPE)
    {
      if (complain)
 error ("invalid use of const_cast with type %qT, which is a pointer "
        "or reference to a function type", dst_type);
      return error_mark_node;
    }


  used_types_insert (dst_type);

  src_type = TREE_TYPE (expr);

  if (TREE_CODE (src_type) == REFERENCE_TYPE)
    src_type = TREE_TYPE (src_type);







  if (TREE_CODE (dst_type) == REFERENCE_TYPE)
    {
      reference_type = dst_type;
      if (! real_lvalue_p (expr))
 {
   if (complain)
     error ("invalid const_cast of an rvalue of type %qT to type %qT",
     src_type, dst_type);
   return error_mark_node;
 }
      dst_type = build_pointer_type (TREE_TYPE (dst_type));
      src_type = build_pointer_type (src_type);
    }
  else
    {
      reference_type = NULL_TREE;



      src_type = type_decays_to (src_type);
      if (src_type == error_mark_node)
 return error_mark_node;
    }

  if ((TYPE_PTR_P (src_type) || TYPE_PTRMEM_P (src_type))
      && comp_ptr_ttypes_const (dst_type, src_type))
    {
      if (valid_p)
 {
   *valid_p = 1;


   if (warn_cast_qual)
     check_for_casting_away_constness (src_type, dst_type,
           warning0,
           "cast");
 }
      if (reference_type)
 {
   expr = build_unary_op (ADDR_EXPR, expr, 0);
   expr = build_nop (reference_type, expr);
   return convert_from_reference (expr);
 }
      else
 {
   expr = decay_conversion (expr);



   if (TREE_CODE (expr) == NOP_EXPR
       && TREE_TYPE (expr) == TREE_TYPE (TREE_OPERAND (expr, 0)))
     expr = TREE_OPERAND (expr, 0);
   return build_nop (dst_type, expr);
 }
    }

  if (complain)
    error ("invalid const_cast from type %qT to type %qT",
    src_type, dst_type);
  return error_mark_node;
}
