
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct block_sema_info {struct block_sema_info* prev_block_info; } ;


 int NULL_TREE ;
 struct block_sema_info* cur_block ;
 int push_scope () ;
 scalar_t__ xcalloc (int,int) ;

tree
begin_block (void)
{
  struct block_sema_info *csi;



  csi = (struct block_sema_info*)xcalloc (1, sizeof (struct block_sema_info));
  csi->prev_block_info = cur_block;
  cur_block = csi;
  return NULL_TREE;
}
