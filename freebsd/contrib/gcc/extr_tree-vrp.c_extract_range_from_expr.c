
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ type; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int ASSERT_EXPR ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 int SSA_NAME ;
 int TREE_CODE (int ) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 int TREE_TYPE (int ) ;
 int TRUTH_ANDIF_EXPR ;
 int TRUTH_AND_EXPR ;
 int TRUTH_ORIF_EXPR ;
 int TRUTH_OR_EXPR ;
 int TRUTH_XOR_EXPR ;
 scalar_t__ VR_VARYING ;
 int extract_range_from_assert (TYPE_1__*,int ) ;
 int extract_range_from_binary_expr (TYPE_1__*,int ) ;
 int extract_range_from_comparison (TYPE_1__*,int ) ;
 int extract_range_from_ssa_name (TYPE_1__*,int ) ;
 int extract_range_from_unary_expr (TYPE_1__*,int ) ;
 scalar_t__ is_gimple_min_invariant (int ) ;
 scalar_t__ is_overflow_infinity (int ) ;
 int set_value_range_to_nonnegative (TYPE_1__*,int ,int) ;
 int set_value_range_to_nonnull (TYPE_1__*,int ) ;
 int set_value_range_to_value (TYPE_1__*,int ,int *) ;
 int set_value_range_to_varying (TYPE_1__*) ;
 scalar_t__ tcc_binary ;
 scalar_t__ tcc_comparison ;
 scalar_t__ tcc_unary ;
 scalar_t__ vrp_expr_computes_nonnegative (int ,int*) ;
 scalar_t__ vrp_expr_computes_nonzero (int ,int*) ;

__attribute__((used)) static void
extract_range_from_expr (value_range_t *vr, tree expr)
{
  enum tree_code code = TREE_CODE (expr);

  if (code == ASSERT_EXPR)
    extract_range_from_assert (vr, expr);
  else if (code == SSA_NAME)
    extract_range_from_ssa_name (vr, expr);
  else if (TREE_CODE_CLASS (code) == tcc_binary
    || code == TRUTH_ANDIF_EXPR
    || code == TRUTH_ORIF_EXPR
    || code == TRUTH_AND_EXPR
    || code == TRUTH_OR_EXPR
    || code == TRUTH_XOR_EXPR)
    extract_range_from_binary_expr (vr, expr);
  else if (TREE_CODE_CLASS (code) == tcc_unary)
    extract_range_from_unary_expr (vr, expr);
  else if (TREE_CODE_CLASS (code) == tcc_comparison)
    extract_range_from_comparison (vr, expr);
  else if (is_gimple_min_invariant (expr))
    set_value_range_to_value (vr, expr, ((void*)0));
  else
    set_value_range_to_varying (vr);





  if (vr->type == VR_VARYING)
    {
      bool sop = 0;

      if (INTEGRAL_TYPE_P (TREE_TYPE (expr))
   && vrp_expr_computes_nonnegative (expr, &sop))
 set_value_range_to_nonnegative (vr, TREE_TYPE (expr),
     sop || is_overflow_infinity (expr));
      else if (vrp_expr_computes_nonzero (expr, &sop)
        && !sop)
        set_value_range_to_nonnull (vr, TREE_TYPE (expr));
    }
}
