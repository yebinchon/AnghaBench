
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {scalar_t__ aux; } ;


 int TRUTH_OR_EXPR ;
 int boolean_type_node ;
 scalar_t__ fold_build2 (int ,int ,int ,scalar_t__) ;
 int unshare_expr (scalar_t__) ;

__attribute__((used)) static void
add_to_predicate_list (basic_block bb, tree new_cond)
{
  tree cond = bb->aux;

  if (cond)
    cond = fold_build2 (TRUTH_OR_EXPR, boolean_type_node,
   unshare_expr (cond), new_cond);
  else
    cond = new_cond;

  bb->aux = cond;
}
