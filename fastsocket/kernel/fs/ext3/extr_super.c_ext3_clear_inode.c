
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext3_block_alloc_info {int dummy; } ;
struct TYPE_2__ {struct ext3_block_alloc_info* i_block_alloc_info; } ;


 TYPE_1__* EXT3_I (struct inode*) ;
 int ext3_discard_reservation (struct inode*) ;
 int kfree (struct ext3_block_alloc_info*) ;
 scalar_t__ unlikely (struct ext3_block_alloc_info*) ;

__attribute__((used)) static void ext3_clear_inode(struct inode *inode)
{
 struct ext3_block_alloc_info *rsv = EXT3_I(inode)->i_block_alloc_info;
 ext3_discard_reservation(inode);
 EXT3_I(inode)->i_block_alloc_info = ((void*)0);
 if (unlikely(rsv))
  kfree(rsv);
}
