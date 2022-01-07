
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {int loop_father; } ;


 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 TYPE_1__* bb_for_stmt (int ) ;
 scalar_t__ flow_bb_inside_loop_p (int ,TYPE_1__*) ;
 int gcc_assert (int) ;
 int is_gimple_reg (int ) ;

__attribute__((used)) static void
check_loop_closed_ssa_use (basic_block bb, tree use)
{
  tree def;
  basic_block def_bb;

  if (TREE_CODE (use) != SSA_NAME || !is_gimple_reg (use))
    return;

  def = SSA_NAME_DEF_STMT (use);
  def_bb = bb_for_stmt (def);
  gcc_assert (!def_bb
       || flow_bb_inside_loop_p (def_bb->loop_father, bb));
}
