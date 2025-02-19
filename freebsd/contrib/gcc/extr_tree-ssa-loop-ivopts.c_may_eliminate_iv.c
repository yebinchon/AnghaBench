
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct loop {int latch; } ;
struct ivopts_data {struct loop* current_loop; } ;
struct iv_use {scalar_t__ stmt; } ;
struct iv_cand {TYPE_3__* iv; } ;
typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_6__ {scalar_t__ step; } ;
struct TYPE_5__ {int dest; } ;


 int CDI_DOMINATORS ;
 scalar_t__ COND_EXPR ;
 TYPE_1__* EDGE_SUCC (int ,int) ;
 int GE_EXPR ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 int bb_for_stmt (scalar_t__) ;
 int boolean_type_node ;
 int cand_value_at (struct loop*,struct iv_cand*,scalar_t__,int ) ;
 int dominated_by_p (int ,int ,int ) ;
 scalar_t__ flow_bb_inside_loop_p (struct loop*,int ) ;
 int fold_affine_expr (int ) ;
 int fold_build2 (int ,int ,int ,int ) ;
 int fold_convert (int ,int ) ;
 int integer_nonzerop (int ) ;
 int iv_period (TYPE_3__*) ;
 scalar_t__ last_stmt (int ) ;
 int niter_for_exit (struct ivopts_data*,TYPE_1__*) ;

__attribute__((used)) static bool
may_eliminate_iv (struct ivopts_data *data,
    struct iv_use *use, struct iv_cand *cand, tree *bound)
{
  basic_block ex_bb;
  edge exit;
  tree nit, nit_type;
  tree wider_type, period, per_type;
  struct loop *loop = data->current_loop;

  if (TREE_CODE (cand->iv->step) != INTEGER_CST)
    return 0;



  ex_bb = bb_for_stmt (use->stmt);
  if (use->stmt != last_stmt (ex_bb)
      || TREE_CODE (use->stmt) != COND_EXPR)
    return 0;
  if (!dominated_by_p (CDI_DOMINATORS, loop->latch, ex_bb))
    return 0;

  exit = EDGE_SUCC (ex_bb, 0);
  if (flow_bb_inside_loop_p (loop, exit->dest))
    exit = EDGE_SUCC (ex_bb, 1);
  if (flow_bb_inside_loop_p (loop, exit->dest))
    return 0;

  nit = niter_for_exit (data, exit);
  if (!nit)
    return 0;

  nit_type = TREE_TYPE (nit);




  period = iv_period (cand->iv);
  if (!period)
    return 0;
  per_type = TREE_TYPE (period);

  wider_type = TREE_TYPE (period);
  if (TYPE_PRECISION (nit_type) < TYPE_PRECISION (per_type))
    wider_type = per_type;
  else
    wider_type = nit_type;

  if (!integer_nonzerop (fold_build2 (GE_EXPR, boolean_type_node,
          fold_convert (wider_type, period),
          fold_convert (wider_type, nit))))
    return 0;

  *bound = fold_affine_expr (cand_value_at (loop, cand, use->stmt, nit));
  return 1;
}
