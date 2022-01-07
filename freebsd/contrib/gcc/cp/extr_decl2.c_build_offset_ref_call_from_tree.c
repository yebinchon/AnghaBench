
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int ADDR_EXPR ;
 int CALL_EXPR ;
 scalar_t__ DOTSTAR_EXPR ;
 scalar_t__ MEMBER_REF ;
 int NULL_TREE ;
 scalar_t__ OFFSET_REF ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ any_type_dependent_arguments_p (scalar_t__) ;
 scalar_t__ build_function_call (scalar_t__,scalar_t__) ;
 scalar_t__ build_min_non_dep (int ,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ build_min_nt (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ build_non_dependent_args (scalar_t__) ;
 scalar_t__ build_non_dependent_expr (scalar_t__) ;
 scalar_t__ build_unary_op (int ,scalar_t__,int ) ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ get_member_function_from_ptrfunc (scalar_t__*,scalar_t__) ;
 scalar_t__ processing_template_decl ;
 scalar_t__ tree_cons (int ,scalar_t__,scalar_t__) ;
 scalar_t__ type_dependent_expression_p (scalar_t__) ;

tree
build_offset_ref_call_from_tree (tree fn, tree args)
{
  tree orig_fn;
  tree orig_args;
  tree expr;
  tree object;

  orig_fn = fn;
  orig_args = args;
  object = TREE_OPERAND (fn, 0);

  if (processing_template_decl)
    {
      gcc_assert (TREE_CODE (fn) == DOTSTAR_EXPR
    || TREE_CODE (fn) == MEMBER_REF);
      if (type_dependent_expression_p (fn)
   || any_type_dependent_arguments_p (args))
 return build_min_nt (CALL_EXPR, fn, args, NULL_TREE);




      args = build_non_dependent_args (args);
      if (TREE_CODE (fn) == DOTSTAR_EXPR)
 object = build_unary_op (ADDR_EXPR, object, 0);
      object = build_non_dependent_expr (object);
      args = tree_cons (NULL_TREE, object, args);

      fn = build_non_dependent_expr (fn);
    }







  if (TREE_CODE (fn) == OFFSET_REF)
    {
      tree object_addr = build_unary_op (ADDR_EXPR, object, 0);
      fn = TREE_OPERAND (fn, 1);
      fn = get_member_function_from_ptrfunc (&object_addr, fn);
      args = tree_cons (NULL_TREE, object_addr, args);
    }

  expr = build_function_call (fn, args);
  if (processing_template_decl && expr != error_mark_node)
    return build_min_non_dep (CALL_EXPR, expr, orig_fn, orig_args, NULL_TREE);
  return expr;
}
