
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct version_info {int has_nonlin_use; scalar_t__ inv_id; int name; } ;
struct ivopts_data {int relevant; scalar_t__ max_inv_id; int current_loop; } ;
typedef scalar_t__ basic_block ;


 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 int SSA_NAME_VERSION (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ bb_for_stmt (int ) ;
 int bitmap_set_bit (int ,int ) ;
 scalar_t__ flow_bb_inside_loop_p (int ,scalar_t__) ;
 int is_gimple_reg (int ) ;
 struct version_info* name_info (struct ivopts_data*,int ) ;

__attribute__((used)) static void
record_invariant (struct ivopts_data *data, tree op, bool nonlinear_use)
{
  basic_block bb;
  struct version_info *info;

  if (TREE_CODE (op) != SSA_NAME
      || !is_gimple_reg (op))
    return;

  bb = bb_for_stmt (SSA_NAME_DEF_STMT (op));
  if (bb
      && flow_bb_inside_loop_p (data->current_loop, bb))
    return;

  info = name_info (data, op);
  info->name = op;
  info->has_nonlin_use |= nonlinear_use;
  if (!info->inv_id)
    info->inv_id = ++data->max_inv_id;
  bitmap_set_bit (data->relevant, SSA_NAME_VERSION (op));
}
