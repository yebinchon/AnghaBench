
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef enum gimplify_status { ____Placeholder_gimplify_status } gimplify_status ;
struct TYPE_3__ {int (* type_for_mode ) (int ,int) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;


 int GS_OK ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int VIEW_CONVERT_EXPR ;
 int fold_build1 (int ,int ,int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 TYPE_2__ lang_hooks ;
 int stub1 (int ,int) ;

__attribute__((used)) static enum gimplify_status
gimplify_scalar_mode_aggregate_compare (tree *expr_p)
{
  tree op0 = TREE_OPERAND (*expr_p, 0);
  tree op1 = TREE_OPERAND (*expr_p, 1);

  tree type = TREE_TYPE (op0);
  tree scalar_type = lang_hooks.types.type_for_mode (TYPE_MODE (type), 1);

  op0 = fold_build1 (VIEW_CONVERT_EXPR, scalar_type, op0);
  op1 = fold_build1 (VIEW_CONVERT_EXPR, scalar_type, op1);

  *expr_p
    = fold_build2 (TREE_CODE (*expr_p), TREE_TYPE (*expr_p), op0, op1);

  return GS_OK;
}
