
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;


 scalar_t__ FUNCTION_DECL ;
 int LOOKUP_NORMAL ;
 int LSHIFT_EXPR ;
 char* NULL_TREE ;
 scalar_t__ OFFSET_REF ;
 int PLUS_EXPR ;
 scalar_t__ PTRMEM_CST ;
 scalar_t__ TARGET_PTRMEMFUNC_VBIT_LOCATION ;
 scalar_t__ TREE_CODE (char*) ;
 char* TREE_OPERAND (char*,int ) ;
 scalar_t__ TREE_SIDE_EFFECTS (char*) ;
 char* TREE_TYPE (char*) ;
 int TYPE_PTRMEMFUNC_OBJECT_TYPE (char*) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (char*) ;
 char* build_c_cast (char*,char*) ;
 char* build_ptrmemfunc1 (char*,char*,char*) ;
 char* build_ptrmemfunc_access_expr (char*,int ) ;
 char* build_ptrmemfunc_type (char*) ;
 char* build_reinterpret_cast (char*,char*) ;
 int can_convert_arg (char*,char*,char*,int ) ;
 char* cp_build_binary_op (int ,char*,char*) ;
 int delta_identifier ;
 int error (char*,char*,char*) ;
 char* error_mark_node ;
 scalar_t__ error_operand_p (char*) ;
 int expand_ptrmemfunc_cst (char*,char**,char**) ;
 int gcc_assert (int) ;
 char* get_delta_difference (int ,int ,int,int) ;
 char* instantiate_type (char*,char*,int ) ;
 char* integer_one_node ;
 char* integer_zero_node ;
 scalar_t__ integer_zerop (char*) ;
 char* make_ptrmem_cst (char*,char*) ;
 int pfn_identifier ;
 scalar_t__ processing_template_decl ;
 int ptrdiff_type_node ;
 scalar_t__ ptrmemfunc_vbit_in_delta ;
 int same_type_ignoring_top_level_qualifiers_p (char*,int ) ;
 scalar_t__ same_type_p (char*,char*) ;
 char* save_expr (char*) ;
 int tf_warning_or_error ;
 scalar_t__ type_unknown_p (char*) ;

tree
build_ptrmemfunc (tree type, tree pfn, int force, bool c_cast_p)
{
  tree fn;
  tree pfn_type;
  tree to_type;

  if (error_operand_p (pfn))
    return error_mark_node;

  pfn_type = TREE_TYPE (pfn);
  to_type = build_ptrmemfunc_type (type);


  if (TYPE_PTRMEMFUNC_P (pfn_type))
    {
      tree delta = NULL_TREE;
      tree npfn = NULL_TREE;
      tree n;

      if (!force
   && !can_convert_arg (to_type, TREE_TYPE (pfn), pfn, LOOKUP_NORMAL))
 error ("invalid conversion to type %qT from type %qT",
        to_type, pfn_type);

      n = get_delta_difference (TYPE_PTRMEMFUNC_OBJECT_TYPE (pfn_type),
    TYPE_PTRMEMFUNC_OBJECT_TYPE (to_type),
    force,
    c_cast_p);





      if (TREE_CODE (pfn) != PTRMEM_CST)
 {
   if (same_type_p (to_type, pfn_type))
     return pfn;
   else if (integer_zerop (n))
     return build_reinterpret_cast (to_type, pfn);
 }

      if (TREE_SIDE_EFFECTS (pfn))
 pfn = save_expr (pfn);


      if (TREE_CODE (pfn) == PTRMEM_CST)
 expand_ptrmemfunc_cst (pfn, &delta, &npfn);
      else
 {
   npfn = build_ptrmemfunc_access_expr (pfn, pfn_identifier);
   delta = build_ptrmemfunc_access_expr (pfn, delta_identifier);
 }


      gcc_assert (same_type_ignoring_top_level_qualifiers_p
     (TREE_TYPE (delta), ptrdiff_type_node));
      if (TARGET_PTRMEMFUNC_VBIT_LOCATION == ptrmemfunc_vbit_in_delta)
 n = cp_build_binary_op (LSHIFT_EXPR, n, integer_one_node);
      delta = cp_build_binary_op (PLUS_EXPR, delta, n);
      return build_ptrmemfunc1 (to_type, delta, npfn);
    }


  if (integer_zerop (pfn))
    {
      pfn = build_c_cast (type, integer_zero_node);
      return build_ptrmemfunc1 (to_type,
    integer_zero_node,
    pfn);
    }

  if (type_unknown_p (pfn))
    return instantiate_type (type, pfn, tf_warning_or_error);

  fn = TREE_OPERAND (pfn, 0);
  gcc_assert (TREE_CODE (fn) == FUNCTION_DECL


       || (processing_template_decl && TREE_CODE (fn) == OFFSET_REF));
  return make_ptrmem_cst (to_type, fn);
}
