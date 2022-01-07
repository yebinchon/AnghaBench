
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int INDIRECT_REF ;
 int LOOKUP_NORMAL ;
 int NULL_TREE ;
 scalar_t__ build_indirect_ref (scalar_t__,char const*) ;
 scalar_t__ build_min_non_dep (int ,scalar_t__,scalar_t__) ;
 scalar_t__ build_min_nt (int ,scalar_t__) ;
 scalar_t__ build_new_op (int ,int ,scalar_t__,int ,int ,int *) ;
 scalar_t__ build_non_dependent_expr (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ processing_template_decl ;
 scalar_t__ type_dependent_expression_p (scalar_t__) ;

tree
build_x_indirect_ref (tree expr, const char *errorstring)
{
  tree orig_expr = expr;
  tree rval;

  if (processing_template_decl)
    {
      if (type_dependent_expression_p (expr))
 return build_min_nt (INDIRECT_REF, expr);
      expr = build_non_dependent_expr (expr);
    }

  rval = build_new_op (INDIRECT_REF, LOOKUP_NORMAL, expr, NULL_TREE,
         NULL_TREE, ((void*)0));
  if (!rval)
    rval = build_indirect_ref (expr, errorstring);

  if (processing_template_decl && rval != error_mark_node)
    return build_min_non_dep (INDIRECT_REF, rval, orig_expr);
  else
    return rval;
}
