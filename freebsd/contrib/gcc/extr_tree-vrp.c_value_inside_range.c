
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; int min; } ;
typedef TYPE_1__ value_range_t ;
typedef scalar_t__ tree ;


 int GE_EXPR ;
 int LE_EXPR ;
 scalar_t__ boolean_true_node ;
 int boolean_type_node ;
 scalar_t__ fold_binary_to_constant (int ,int ,scalar_t__,int ) ;
 int fold_defer_overflow_warnings () ;
 int fold_undefer_and_ignore_overflow_warnings () ;

__attribute__((used)) static inline int
value_inside_range (tree val, value_range_t *vr)
{
  tree cmp1, cmp2;

  fold_defer_overflow_warnings ();

  cmp1 = fold_binary_to_constant (GE_EXPR, boolean_type_node, val, vr->min);
  if (!cmp1)
  {
    fold_undefer_and_ignore_overflow_warnings ();
    return -2;
  }

  cmp2 = fold_binary_to_constant (LE_EXPR, boolean_type_node, val, vr->max);

  fold_undefer_and_ignore_overflow_warnings ();

  if (!cmp2)
    return -2;

  return cmp1 == boolean_true_node && cmp2 == boolean_true_node;
}
