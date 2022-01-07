
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int ADDR_EXPR ;
 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 int CLEANUP_POINT_EXPR ;
 int COMPOUND_EXPR ;
 int INIT_EXPR ;
 int LOOKUP_NORMAL ;
 int LOOKUP_ONLYCONVERTING ;
 int MUST_NOT_THROW_EXPR ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ TARGET_EXPR ;
 scalar_t__ TARGET_EXPR_SLOT (scalar_t__) ;
 int THROW_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 int TRY_CATCH_EXPR ;
 int TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_HAS_NONTRIVIAL_DESTRUCTOR (scalar_t__) ;
 int TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ build1 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_eh_type_type (int ) ;
 scalar_t__ build_function_call (scalar_t__,scalar_t__) ;
 scalar_t__ build_function_type (scalar_t__,scalar_t__) ;
 scalar_t__ build_indirect_ref (scalar_t__,int *) ;
 scalar_t__ build_int_cst (scalar_t__,int ) ;
 scalar_t__ build_min (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build_nop (scalar_t__,scalar_t__) ;
 scalar_t__ build_pointer_type (scalar_t__) ;
 scalar_t__ build_special_member_call (scalar_t__,int ,int ,scalar_t__,int) ;
 int build_tree_list (scalar_t__,scalar_t__) ;
 scalar_t__ cfun ;
 scalar_t__ cleanup_type ;
 int complete_ctor_identifier ;
 int complete_dtor_identifier ;
 int current_function_returns_abnormally ;
 int cxx_mark_addressable (scalar_t__) ;
 scalar_t__ decay_conversion (scalar_t__) ;
 scalar_t__ decl_is_java_type (scalar_t__,int) ;
 scalar_t__ do_allocate_exception (scalar_t__) ;
 scalar_t__ do_free_exception (scalar_t__) ;
 int doing_eh (int) ;
 int error (char*,...) ;
 scalar_t__ error_mark_node ;
 int get_global_value_if_present (scalar_t__,scalar_t__*) ;
 scalar_t__ get_identifier (char*) ;
 scalar_t__ get_target_expr (scalar_t__) ;
 int is_admissible_throw_operand (scalar_t__) ;
 scalar_t__ is_bitfield_expr_with_lowered_type (scalar_t__) ;
 scalar_t__ lookup_fnfields (int ,int ,int ) ;
 int mark_used (scalar_t__) ;
 scalar_t__ null_node ;
 int prepare_eh_type (scalar_t__) ;
 scalar_t__ processing_template_decl ;
 scalar_t__ ptr_type_node ;
 scalar_t__ push_throw_library_fn (scalar_t__,scalar_t__) ;
 scalar_t__ really_overloaded_fn (scalar_t__) ;
 int stabilize_init (scalar_t__,scalar_t__*) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ type_decays_to (int ) ;
 scalar_t__ void_list_node ;
 scalar_t__ void_type_node ;
 int walk_tree_without_duplicates (scalar_t__*,int ,int ) ;
 int warning (int ,char*) ;
 int wrap_cleanups_r ;

tree
build_throw (tree exp)
{
  tree fn;

  if (exp == error_mark_node)
    return exp;

  if (processing_template_decl)
    {
      if (cfun)
 current_function_returns_abnormally = 1;
      return build_min (THROW_EXPR, void_type_node, exp);
    }

  if (exp == null_node)
    warning (0, "throwing NULL, which has integral, not pointer type");

  if (exp != NULL_TREE)
    {
      if (!is_admissible_throw_operand (exp))
 return error_mark_node;
    }

  if (! doing_eh (1))
    return error_mark_node;

  if (exp && decl_is_java_type (TREE_TYPE (exp), 1))
    {
      tree fn = get_identifier ("_Jv_Throw");
      if (!get_global_value_if_present (fn, &fn))
 {

   tree tmp = tree_cons (NULL_TREE, ptr_type_node, void_list_node);
   tmp = build_function_type (ptr_type_node, tmp);
   fn = push_throw_library_fn (fn, tmp);
 }
      else if (really_overloaded_fn (fn))
 {
   error ("%qD should never be overloaded", fn);
   return error_mark_node;
 }
      fn = OVL_CURRENT (fn);
      exp = build_function_call (fn, tree_cons (NULL_TREE, exp, NULL_TREE));
    }
  else if (exp)
    {
      tree throw_type;
      tree temp_type;
      tree cleanup;
      tree object, ptr;
      tree tmp;
      tree temp_expr, allocate_expr;
      bool elided;


      if (!cleanup_type)
 {
   tmp = void_list_node;
   tmp = tree_cons (NULL_TREE, ptr_type_node, tmp);
   tmp = build_function_type (void_type_node, tmp);
   cleanup_type = build_pointer_type (tmp);
 }

      fn = get_identifier ("__cxa_throw");
      if (!get_global_value_if_present (fn, &fn))
 {


   tmp = void_list_node;
   tmp = tree_cons (NULL_TREE, cleanup_type, tmp);
   tmp = tree_cons (NULL_TREE, ptr_type_node, tmp);
   tmp = tree_cons (NULL_TREE, ptr_type_node, tmp);
   tmp = build_function_type (void_type_node, tmp);
   fn = push_throw_library_fn (fn, tmp);
 }
      temp_type = is_bitfield_expr_with_lowered_type (exp);
      if (!temp_type)
 temp_type = type_decays_to (TYPE_MAIN_VARIANT (TREE_TYPE (exp)));
      allocate_expr = do_allocate_exception (temp_type);
      allocate_expr = get_target_expr (allocate_expr);
      ptr = TARGET_EXPR_SLOT (allocate_expr);
      object = build_nop (build_pointer_type (temp_type), ptr);
      object = build_indirect_ref (object, ((void*)0));

      elided = (TREE_CODE (exp) == TARGET_EXPR);


      if (CLASS_TYPE_P (temp_type))
 {

   exp = (build_special_member_call
   (object, complete_ctor_identifier,
    build_tree_list (NULL_TREE, exp),
    TREE_TYPE (object),
    LOOKUP_NORMAL | LOOKUP_ONLYCONVERTING));
   if (exp == error_mark_node)
     {
       error ("  in thrown expression");
       return error_mark_node;
     }
 }
      else
 exp = build2 (INIT_EXPR, temp_type, object,
        decay_conversion (exp));
      temp_expr = NULL_TREE;
      stabilize_init (exp, &temp_expr);




      exp = build1 (CLEANUP_POINT_EXPR, void_type_node, exp);

      if (elided)
 exp = build2 (TRY_CATCH_EXPR, void_type_node, exp,
        do_free_exception (ptr));
      else
 exp = build1 (MUST_NOT_THROW_EXPR, void_type_node, exp);


      exp = build2 (COMPOUND_EXPR, TREE_TYPE (exp), allocate_expr, exp);
      if (temp_expr)
 {





   walk_tree_without_duplicates (&temp_expr, wrap_cleanups_r, 0);
   exp = build2 (COMPOUND_EXPR, TREE_TYPE (exp), temp_expr, exp);
   exp = build1 (CLEANUP_POINT_EXPR, TREE_TYPE (exp), exp);
 }

      throw_type = build_eh_type_type (prepare_eh_type (TREE_TYPE (object)));

      if (TYPE_HAS_NONTRIVIAL_DESTRUCTOR (TREE_TYPE (object)))
 {
   cleanup = lookup_fnfields (TYPE_BINFO (TREE_TYPE (object)),
         complete_dtor_identifier, 0);
   cleanup = BASELINK_FUNCTIONS (cleanup);
   mark_used (cleanup);
   cxx_mark_addressable (cleanup);

   cleanup = build1 (ADDR_EXPR, cleanup_type, cleanup);
 }
      else
 cleanup = build_int_cst (cleanup_type, 0);

      tmp = tree_cons (NULL_TREE, cleanup, NULL_TREE);
      tmp = tree_cons (NULL_TREE, throw_type, tmp);
      tmp = tree_cons (NULL_TREE, ptr, tmp);

      tmp = build_function_call (fn, tmp);


      exp = build2 (COMPOUND_EXPR, TREE_TYPE (tmp), exp, tmp);
    }
  else
    {


      tree fn = get_identifier ("__cxa_rethrow");
      if (!get_global_value_if_present (fn, &fn))
 {

   fn = push_throw_library_fn
     (fn, build_function_type (void_type_node, void_list_node));
 }



      exp = build_function_call (fn, NULL_TREE);
    }

  exp = build1 (THROW_EXPR, void_type_node, exp);

  return exp;
}
