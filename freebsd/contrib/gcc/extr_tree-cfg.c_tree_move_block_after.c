
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_7__ {struct TYPE_7__* prev_bb; } ;


 int link_block (TYPE_1__*,TYPE_1__*) ;
 int unlink_block (TYPE_1__*) ;

__attribute__((used)) static bool
tree_move_block_after (basic_block bb, basic_block after)
{
  if (bb->prev_bb == after)
    return 1;

  unlink_block (bb);
  link_block (bb, after);

  return 1;
}
