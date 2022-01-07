
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct loop {int depth; } ;
typedef TYPE_2__* basic_block ;
struct TYPE_7__ {TYPE_1__* max_loop; } ;
struct TYPE_6__ {int loop_father; } ;
struct TYPE_5__ {int outer; } ;


 TYPE_4__* LIM_DATA (int ) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 TYPE_2__* bb_for_stmt (int ) ;
 struct loop* find_common_loop (struct loop*,int ) ;
 struct loop* superloop_at_depth (struct loop*,int) ;

__attribute__((used)) static struct loop *
outermost_invariant_loop (tree def, struct loop *loop)
{
  tree def_stmt;
  basic_block def_bb;
  struct loop *max_loop;

  if (TREE_CODE (def) != SSA_NAME)
    return superloop_at_depth (loop, 1);

  def_stmt = SSA_NAME_DEF_STMT (def);
  def_bb = bb_for_stmt (def_stmt);
  if (!def_bb)
    return superloop_at_depth (loop, 1);

  max_loop = find_common_loop (loop, def_bb->loop_father);

  if (LIM_DATA (def_stmt) && LIM_DATA (def_stmt)->max_loop)
    max_loop = find_common_loop (max_loop,
     LIM_DATA (def_stmt)->max_loop->outer);
  if (max_loop == loop)
    return ((void*)0);
  max_loop = superloop_at_depth (loop, max_loop->depth + 1);

  return max_loop;
}
