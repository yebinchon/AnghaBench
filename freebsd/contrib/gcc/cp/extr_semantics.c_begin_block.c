
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct block_sema_info {struct block_sema_info* prev_block_info; } ;
struct TYPE_2__ {int stmts_are_full_exprs_p; } ;


 int NULL_TREE ;
 struct block_sema_info* cur_block ;
 TYPE_1__* current_stmt_tree () ;
 int do_pushlevel (int ) ;
 int sk_block ;
 scalar_t__ xcalloc (int,int) ;

tree
begin_block (void)
{
  struct block_sema_info *csi;
  tree block;

  current_stmt_tree ()->stmts_are_full_exprs_p = 1;



  block = NULL_TREE;

  csi = (struct block_sema_info*)xcalloc (1, sizeof (struct block_sema_info));
  csi->prev_block_info = cur_block;
  cur_block = csi;
  return block;
}
