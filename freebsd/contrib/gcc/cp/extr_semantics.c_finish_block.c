
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct block_sema_info {struct block_sema_info* prev_block_info; } ;


 struct block_sema_info* cur_block ;
 int do_poplevel (scalar_t__) ;

struct block_sema_info *
finish_block (tree block)
{
  struct block_sema_info *csi = cur_block;
  cur_block = cur_block->prev_block_info;





  block = 0;

  return csi;
}
