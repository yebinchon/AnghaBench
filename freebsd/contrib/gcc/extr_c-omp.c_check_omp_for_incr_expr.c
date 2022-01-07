
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int INTEGRAL_TYPE_P (int ) ;



 int TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 scalar_t__ build_int_cst (int ,int ) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_build2 (int const,int ,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (int ,scalar_t__) ;

__attribute__((used)) static tree
check_omp_for_incr_expr (tree exp, tree decl)
{
  tree t;

  if (!INTEGRAL_TYPE_P (TREE_TYPE (exp))
      || TYPE_PRECISION (TREE_TYPE (exp)) < TYPE_PRECISION (TREE_TYPE (decl)))
    return error_mark_node;

  if (exp == decl)
    return build_int_cst (TREE_TYPE (exp), 0);

  switch (TREE_CODE (exp))
    {
    case 129:
      t = check_omp_for_incr_expr (TREE_OPERAND (exp, 0), decl);
      if (t != error_mark_node)
        return fold_convert (TREE_TYPE (exp), t);
      break;
    case 130:
      t = check_omp_for_incr_expr (TREE_OPERAND (exp, 0), decl);
      if (t != error_mark_node)
        return fold_build2 (130, TREE_TYPE (exp), t, TREE_OPERAND (exp, 1));
      break;
    case 128:
      t = check_omp_for_incr_expr (TREE_OPERAND (exp, 0), decl);
      if (t != error_mark_node)
        return fold_build2 (128, TREE_TYPE (exp), t, TREE_OPERAND (exp, 1));
      t = check_omp_for_incr_expr (TREE_OPERAND (exp, 1), decl);
      if (t != error_mark_node)
        return fold_build2 (128, TREE_TYPE (exp), TREE_OPERAND (exp, 0), t);
      break;
    default:
      break;
    }

  return error_mark_node;
}
