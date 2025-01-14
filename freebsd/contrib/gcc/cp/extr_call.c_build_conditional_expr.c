
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char* tree ;
struct z_candidate {TYPE_1__** convs; } ;
struct TYPE_4__ {scalar_t__ kind; int bad_p; } ;
typedef TYPE_1__ conversion ;


 scalar_t__ ARITHMETIC_TYPE_P (char*) ;
 scalar_t__ BLOCK_POINTER_TYPE ;
 scalar_t__ CLASS_TYPE_P (char*) ;
 int COND_EXPR ;
 scalar_t__ ENUMERAL_TYPE ;
 int LOOKUP_NORMAL ;
 int NOP_EXPR ;
 char* NULL_TREE ;
 scalar_t__ THROW_EXPR ;
 scalar_t__ TREE_CODE (char*) ;
 char* TREE_TYPE (char*) ;
 scalar_t__ TYPE_PTRMEMFUNC_P (char*) ;
 scalar_t__ TYPE_PTRMEM_P (char*) ;
 scalar_t__ TYPE_PTR_P (char*) ;
 scalar_t__ TYPE_PTR_TO_MEMBER_P (char*) ;
 int TYPE_QUALS (char*) ;
 scalar_t__ VOID_TYPE_P (char*) ;
 int add_builtin_candidates (struct z_candidate**,int ,int ,int ,char**,int ) ;
 int ansi_opname (int ) ;
 char* boolean_type_node ;
 int build3 (int ,char*,char*,char*,char*) ;
 scalar_t__ ck_ambig ;
 char* composite_pointer_type (char*,char*,char*,char*,char*) ;
 TYPE_1__* conditional_conversion (char*,char*) ;
 int conversion_obstack ;
 void* conversion_obstack_alloc (int ) ;
 char* convert_from_reference (char*) ;
 char* convert_like (TYPE_1__*,char*) ;
 char* cp_build_qualified_type (char*,int) ;
 char* decay_conversion (char*) ;
 int error (char*,char*,...) ;
 char* error_mark_node ;
 scalar_t__ error_operand_p (char*) ;
 scalar_t__ extra_warnings ;
 char* fold_if_not_in_template (int ) ;
 char* force_rvalue (char*) ;
 char* get_target_expr (char*) ;
 scalar_t__ null_ptr_cst_p (char*) ;
 int obstack_free (int *,void*) ;
 int op_error (int ,int ,char*,char*,char*,char*) ;
 scalar_t__ pedantic ;
 int pedwarn (char*) ;
 char* perform_implicit_conversion (char*,char*) ;
 int print_z_candidates (struct z_candidate*) ;
 scalar_t__ real_lvalue_p (char*) ;
 char* rvalue (char*) ;
 scalar_t__ same_type_p (char*,char*) ;
 char* save_expr (char*) ;
 struct z_candidate* splice_viable (struct z_candidate*,scalar_t__,int*) ;
 char* stabilize_reference (char*) ;
 struct z_candidate* tourney (struct z_candidate*) ;
 char* type_after_usual_arithmetic_conversions (char*,char*) ;
 char* type_promotes_to (char*) ;
 char* unlowered_expr_type (char*) ;
 char* void_type_node ;
 int warning (int ,char*,...) ;

tree
build_conditional_expr (tree arg1, tree arg2, tree arg3)
{
  tree arg2_type;
  tree arg3_type;
  tree result = NULL_TREE;
  tree result_type = NULL_TREE;
  bool lvalue_p = 1;
  struct z_candidate *candidates = 0;
  struct z_candidate *cand;
  void *p;





  if (!arg2)
    {
      if (pedantic)
 pedwarn ("ISO C++ forbids omitting the middle term of a ?: expression");


      if (real_lvalue_p (arg1))
 arg2 = arg1 = stabilize_reference (arg1);
      else
 arg2 = arg1 = save_expr (arg1);
    }





  arg1 = perform_implicit_conversion (boolean_type_node, arg1);



  if (error_operand_p (arg1)
      || error_operand_p (arg2)
      || error_operand_p (arg3))
    return error_mark_node;
  arg2_type = unlowered_expr_type (arg2);
  arg3_type = unlowered_expr_type (arg3);
  if (VOID_TYPE_P (arg2_type) || VOID_TYPE_P (arg3_type))
    {



      if (!VOID_TYPE_P (arg2_type))
 arg2 = decay_conversion (arg2);
      if (!VOID_TYPE_P (arg3_type))
 arg3 = decay_conversion (arg3);
      arg2_type = TREE_TYPE (arg2);
      arg3_type = TREE_TYPE (arg3);
      if (TREE_CODE (arg2) == THROW_EXPR
   && TREE_CODE (arg3) != THROW_EXPR)
 {
   if (!VOID_TYPE_P (arg3_type))
     arg3 = force_rvalue (arg3);
   arg3_type = TREE_TYPE (arg3);
   result_type = arg3_type;
 }
      else if (TREE_CODE (arg2) != THROW_EXPR
        && TREE_CODE (arg3) == THROW_EXPR)
 {
   if (!VOID_TYPE_P (arg2_type))
     arg2 = force_rvalue (arg2);
   arg2_type = TREE_TYPE (arg2);
   result_type = arg2_type;
 }
      else if (VOID_TYPE_P (arg2_type) && VOID_TYPE_P (arg3_type))
 result_type = void_type_node;
      else
 {
   error ("%qE has type %<void%> and is not a throw-expression",
      VOID_TYPE_P (arg2_type) ? arg2 : arg3);
   return error_mark_node;
 }

      lvalue_p = 0;
      goto valid_operands;
    }





  else if (!same_type_p (arg2_type, arg3_type)
    && (CLASS_TYPE_P (arg2_type) || CLASS_TYPE_P (arg3_type)))
    {
      conversion *conv2;
      conversion *conv3;


      p = conversion_obstack_alloc (0);

      conv2 = conditional_conversion (arg2, arg3);
      conv3 = conditional_conversion (arg3, arg2);
      if ((conv2 && !conv2->bad_p
    && conv3 && !conv3->bad_p)
   || (conv2 && conv2->kind == ck_ambig)
   || (conv3 && conv3->kind == ck_ambig))
 {
   error ("operands to ?: have different types %qT and %qT",
   arg2_type, arg3_type);
   result = error_mark_node;
 }
      else if (conv2 && (!conv2->bad_p || !conv3))
 {
   arg2 = convert_like (conv2, arg2);
   arg2 = convert_from_reference (arg2);
   arg2_type = TREE_TYPE (arg2);





   if (error_operand_p (arg2))
     result = error_mark_node;
 }
      else if (conv3 && (!conv3->bad_p || !conv2))
 {
   arg3 = convert_like (conv3, arg3);
   arg3 = convert_from_reference (arg3);
   arg3_type = TREE_TYPE (arg3);
   if (error_operand_p (arg3))
     result = error_mark_node;
 }


      obstack_free (&conversion_obstack, p);

      if (result)
 return result;
      if ((conv2 || conv3)
   && CLASS_TYPE_P (arg2_type)
   && TYPE_QUALS (arg2_type) != TYPE_QUALS (arg3_type))
 arg2_type = arg3_type =
   cp_build_qualified_type (arg2_type,
       TYPE_QUALS (arg2_type)
       | TYPE_QUALS (arg3_type));
    }





  if (real_lvalue_p (arg2)
      && real_lvalue_p (arg3)
      && same_type_p (arg2_type, arg3_type))
    {
      result_type = arg2_type;
      goto valid_operands;
    }
  lvalue_p = 0;
  if (!same_type_p (arg2_type, arg3_type)
      && (CLASS_TYPE_P (arg2_type) || CLASS_TYPE_P (arg3_type)))
    {
      tree args[3];
      conversion *conv;
      bool any_viable_p;




      args[0] = arg2;
      args[1] = arg3;
      args[2] = arg1;
      add_builtin_candidates (&candidates,
         COND_EXPR,
         NOP_EXPR,
         ansi_opname (COND_EXPR),
         args,
         LOOKUP_NORMAL);





      candidates = splice_viable (candidates, pedantic, &any_viable_p);
      if (!any_viable_p)
 {
   op_error (COND_EXPR, NOP_EXPR, arg1, arg2, arg3, "no match");
   print_z_candidates (candidates);
   return error_mark_node;
 }
      cand = tourney (candidates);
      if (!cand)
 {
   op_error (COND_EXPR, NOP_EXPR, arg1, arg2, arg3, "no match");
   print_z_candidates (candidates);
   return error_mark_node;
 }






      conv = cand->convs[0];
      arg1 = convert_like (conv, arg1);
      conv = cand->convs[1];
      arg2 = convert_like (conv, arg2);
      conv = cand->convs[2];
      arg3 = convert_like (conv, arg3);
    }
  arg2 = force_rvalue (arg2);
  if (!CLASS_TYPE_P (arg2_type))
    arg2_type = TREE_TYPE (arg2);

  arg3 = force_rvalue (arg3);
  if (!CLASS_TYPE_P (arg2_type))
    arg3_type = TREE_TYPE (arg3);

  if (arg2 == error_mark_node || arg3 == error_mark_node)
    return error_mark_node;







  if (same_type_p (arg2_type, arg3_type))
    result_type = arg2_type;





  else if ((ARITHMETIC_TYPE_P (arg2_type)
     || TREE_CODE (arg2_type) == ENUMERAL_TYPE)
    && (ARITHMETIC_TYPE_P (arg3_type)
        || TREE_CODE (arg3_type) == ENUMERAL_TYPE))
    {

      result_type = type_after_usual_arithmetic_conversions (arg2_type,
            arg3_type);

      if (TREE_CODE (arg2_type) == ENUMERAL_TYPE
   && TREE_CODE (arg3_type) == ENUMERAL_TYPE)
  warning (0, "enumeral mismatch in conditional expression: %qT vs %qT",
     arg2_type, arg3_type);
      else if (extra_warnings
        && ((TREE_CODE (arg2_type) == ENUMERAL_TYPE
      && !same_type_p (arg3_type, type_promotes_to (arg2_type)))
     || (TREE_CODE (arg3_type) == ENUMERAL_TYPE
         && !same_type_p (arg2_type, type_promotes_to (arg3_type)))))
 warning (0, "enumeral and non-enumeral type in conditional expression");

      arg2 = perform_implicit_conversion (result_type, arg2);
      arg3 = perform_implicit_conversion (result_type, arg3);
    }
  else if ((null_ptr_cst_p (arg2)

     && (TYPE_PTR_P (arg3_type) || TYPE_PTR_TO_MEMBER_P (arg3_type)
  || TREE_CODE (arg3_type) == BLOCK_POINTER_TYPE))

    || (null_ptr_cst_p (arg3)

        && (TYPE_PTR_P (arg2_type) || TYPE_PTR_TO_MEMBER_P (arg2_type)
     || TREE_CODE (arg2_type) == BLOCK_POINTER_TYPE))
    || ((TYPE_PTR_P (arg2_type)
  || TREE_CODE (arg2_type) == BLOCK_POINTER_TYPE)
        && (TYPE_PTR_P (arg3_type)
     || TREE_CODE (arg3_type) == BLOCK_POINTER_TYPE))

    || (TYPE_PTRMEM_P (arg2_type) && TYPE_PTRMEM_P (arg3_type))
    || (TYPE_PTRMEMFUNC_P (arg2_type) && TYPE_PTRMEMFUNC_P (arg3_type)))
    {
      result_type = composite_pointer_type (arg2_type, arg3_type, arg2,
         arg3, "conditional expression");
      if (result_type == error_mark_node)
 return error_mark_node;
      arg2 = perform_implicit_conversion (result_type, arg2);
      arg3 = perform_implicit_conversion (result_type, arg3);
    }

  if (!result_type)
    {
      error ("operands to ?: have different types %qT and %qT",
      arg2_type, arg3_type);
      return error_mark_node;
    }

 valid_operands:
  result = fold_if_not_in_template (build3 (COND_EXPR, result_type, arg1,
         arg2, arg3));



  if (!lvalue_p)
    {




      if (CLASS_TYPE_P (TREE_TYPE (result)))
 result = get_target_expr (result);


      result = rvalue (result);
    }

  return result;
}
