
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {unsigned long mi_blocks_per_desc_block; } ;


 TYPE_1__* NILFS_MDT (struct inode const*) ;
 unsigned long nilfs_palloc_groups_per_desc_block (struct inode const*) ;

__attribute__((used)) static unsigned long
nilfs_palloc_desc_blkoff(const struct inode *inode, unsigned long group)
{
 unsigned long desc_block =
  group / nilfs_palloc_groups_per_desc_block(inode);
 return desc_block * NILFS_MDT(inode)->mi_blocks_per_desc_block;
}
