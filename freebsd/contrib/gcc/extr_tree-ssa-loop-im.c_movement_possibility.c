
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef enum move_pos { ____Placeholder_move_pos } move_pos ;
struct TYPE_2__ {scalar_t__ has_volatile_ops; } ;


 scalar_t__ COND_EXPR ;
 scalar_t__ MODIFY_EXPR ;
 int MOVE_IMPOSSIBLE ;
 int MOVE_POSSIBLE ;
 int MOVE_PRESERVE_EXECUTION ;
 scalar_t__ SSA_NAME ;
 scalar_t__ SSA_NAME_OCCURS_IN_ABNORMAL_PHI (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 scalar_t__ TREE_SIDE_EFFECTS (int ) ;
 scalar_t__ flag_unswitch_loops ;
 scalar_t__ get_call_expr_in (int ) ;
 TYPE_1__* stmt_ann (int ) ;
 scalar_t__ stmt_ends_bb_p (int ) ;
 scalar_t__ tree_could_trap_p (int ) ;

enum move_pos
movement_possibility (tree stmt)
{
  tree lhs, rhs;

  if (flag_unswitch_loops
      && TREE_CODE (stmt) == COND_EXPR)
    {


      return MOVE_POSSIBLE;
    }

  if (TREE_CODE (stmt) != MODIFY_EXPR)
    return MOVE_IMPOSSIBLE;

  if (stmt_ends_bb_p (stmt))
    return MOVE_IMPOSSIBLE;

  if (stmt_ann (stmt)->has_volatile_ops)
    return MOVE_IMPOSSIBLE;

  lhs = TREE_OPERAND (stmt, 0);
  if (TREE_CODE (lhs) == SSA_NAME
      && SSA_NAME_OCCURS_IN_ABNORMAL_PHI (lhs))
    return MOVE_IMPOSSIBLE;

  rhs = TREE_OPERAND (stmt, 1);

  if (TREE_SIDE_EFFECTS (rhs))
    return MOVE_IMPOSSIBLE;

  if (TREE_CODE (lhs) != SSA_NAME
      || tree_could_trap_p (rhs))
    return MOVE_PRESERVE_EXECUTION;

  if (get_call_expr_in (stmt))
    {
      return MOVE_PRESERVE_EXECUTION;
    }
  return MOVE_POSSIBLE;
}
