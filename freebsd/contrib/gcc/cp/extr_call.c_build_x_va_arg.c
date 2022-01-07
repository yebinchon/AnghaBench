
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int COMPOUND_EXPR ;
 int NULL_TREE ;
 int TREE_TYPE (scalar_t__) ;
 int VA_ARG_EXPR ;
 scalar_t__ build2 (int ,int ,int ,scalar_t__) ;
 scalar_t__ build_indirect_ref (scalar_t__,int *) ;
 scalar_t__ build_min (int ,scalar_t__,scalar_t__) ;
 int build_pointer_type (scalar_t__) ;
 scalar_t__ build_va_arg (scalar_t__,scalar_t__) ;
 int call_builtin_trap () ;
 scalar_t__ complete_type_or_else (scalar_t__,int ) ;
 scalar_t__ convert (int ,int ) ;
 scalar_t__ error_mark_node ;
 scalar_t__ non_reference (scalar_t__) ;
 int null_node ;
 int pod_type_p (scalar_t__) ;
 scalar_t__ processing_template_decl ;
 int warning (int ,char*,scalar_t__) ;

tree
build_x_va_arg (tree expr, tree type)
{
  if (processing_template_decl)
    return build_min (VA_ARG_EXPR, type, expr);

  type = complete_type_or_else (type, NULL_TREE);

  if (expr == error_mark_node || !type)
    return error_mark_node;

  if (! pod_type_p (type))
    {

      tree type1 = non_reference (type);

      warning (0, "cannot receive objects of non-POD type %q#T through %<...%>; "
        "call will abort at runtime", type);
      expr = convert (build_pointer_type (type1), null_node);
      expr = build2 (COMPOUND_EXPR, TREE_TYPE (expr),
       call_builtin_trap (), expr);
      expr = build_indirect_ref (expr, ((void*)0));
      return expr;
    }

  return build_va_arg (expr, type);
}
