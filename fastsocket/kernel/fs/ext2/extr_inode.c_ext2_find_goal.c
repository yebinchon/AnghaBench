
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext2_block_alloc_info {int last_alloc_logical_block; scalar_t__ last_alloc_physical_block; } ;
typedef scalar_t__ ext2_fsblk_t ;
struct TYPE_2__ {struct ext2_block_alloc_info* i_block_alloc_info; } ;
typedef int Indirect ;


 TYPE_1__* EXT2_I (struct inode*) ;
 scalar_t__ ext2_find_near (struct inode*,int *) ;

__attribute__((used)) static inline ext2_fsblk_t ext2_find_goal(struct inode *inode, long block,
       Indirect *partial)
{
 struct ext2_block_alloc_info *block_i;

 block_i = EXT2_I(inode)->i_block_alloc_info;





 if (block_i && (block == block_i->last_alloc_logical_block + 1)
  && (block_i->last_alloc_physical_block != 0)) {
  return block_i->last_alloc_physical_block + 1;
 }

 return ext2_find_near(inode, partial);
}
