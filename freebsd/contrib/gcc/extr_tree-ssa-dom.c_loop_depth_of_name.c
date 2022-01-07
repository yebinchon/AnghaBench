
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {int loop_depth; } ;


 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 TYPE_1__* bb_for_stmt (int ) ;

int
loop_depth_of_name (tree x)
{
  tree defstmt;
  basic_block defbb;


  if (TREE_CODE (x) != SSA_NAME)
    return 0;




  defstmt = SSA_NAME_DEF_STMT (x);
  defbb = bb_for_stmt (defstmt);
  if (!defbb)
    return 0;

  return defbb->loop_depth;
}
