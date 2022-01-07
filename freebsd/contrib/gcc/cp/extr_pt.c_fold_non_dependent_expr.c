
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ NULL_TREE ;
 scalar_t__ processing_template_decl ;
 int tf_error ;
 scalar_t__ tsubst_copy_and_build (scalar_t__,scalar_t__,int ,scalar_t__,int,int) ;
 int type_dependent_expression_p (scalar_t__) ;
 int value_dependent_expression_p (scalar_t__) ;

tree
fold_non_dependent_expr (tree expr)
{
  if (expr == NULL_TREE)
    return NULL_TREE;
  if (processing_template_decl
      && !type_dependent_expression_p (expr)
      && !value_dependent_expression_p (expr))
    {
      HOST_WIDE_INT saved_processing_template_decl;

      saved_processing_template_decl = processing_template_decl;
      processing_template_decl = 0;
      expr = tsubst_copy_and_build (expr,
                 NULL_TREE,
        tf_error,
                    NULL_TREE,
                       0,
                                           1);
      processing_template_decl = saved_processing_template_decl;
    }
  return expr;
}
