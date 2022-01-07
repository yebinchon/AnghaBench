
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct loop {int outer; } ;
typedef scalar_t__ bitmap ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {unsigned int index; struct loop* loop_father; } ;


 scalar_t__ BITMAP_ALLOC (int *) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_DEF_STMT (int ) ;
 unsigned int SSA_NAME_VERSION (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 TYPE_1__* bb_for_stmt (int ) ;
 int bitmap_set_bit (scalar_t__,unsigned int) ;
 int is_gimple_reg (int ) ;

__attribute__((used)) static void
find_uses_to_rename_use (basic_block bb, tree use, bitmap *use_blocks,
    bitmap need_phis)
{
  unsigned ver;
  basic_block def_bb;
  struct loop *def_loop;

  if (TREE_CODE (use) != SSA_NAME)
    return;


  if (!is_gimple_reg (use))
    return;

  ver = SSA_NAME_VERSION (use);
  def_bb = bb_for_stmt (SSA_NAME_DEF_STMT (use));
  if (!def_bb)
    return;
  def_loop = def_bb->loop_father;


  if (!def_loop->outer)
    return;

  if (!use_blocks[ver])
    use_blocks[ver] = BITMAP_ALLOC (((void*)0));
  bitmap_set_bit (use_blocks[ver], bb->index);

  bitmap_set_bit (need_phis, ver);
}
