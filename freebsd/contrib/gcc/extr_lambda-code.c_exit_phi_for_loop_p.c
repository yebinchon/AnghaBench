
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct loop {TYPE_1__* single_exit; } ;
struct TYPE_2__ {scalar_t__ dest; } ;


 scalar_t__ PHI_NODE ;
 int PHI_NUM_ARGS (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ bb_for_stmt (int ) ;

__attribute__((used)) static bool
exit_phi_for_loop_p (struct loop *loop, tree stmt)
{

  if (TREE_CODE (stmt) != PHI_NODE
      || PHI_NUM_ARGS (stmt) != 1
      || bb_for_stmt (stmt) != loop->single_exit->dest)
    return 0;

  return 1;
}
