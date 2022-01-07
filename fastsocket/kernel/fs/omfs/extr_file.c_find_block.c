
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omfs_extent_entry {int e_cluster; int e_blocks; } ;
struct inode {int i_sb; } ;
typedef scalar_t__ sector_t ;


 int OMFS_SB (int ) ;
 int be64_to_cpu (int ) ;
 int clus_to_blk (int ,int ) ;

__attribute__((used)) static sector_t find_block(struct inode *inode, struct omfs_extent_entry *ent,
   sector_t block, int count, int *left)
{

 sector_t searched = 0;
 for (; count > 1; count--) {
  int numblocks = clus_to_blk(OMFS_SB(inode->i_sb),
   be64_to_cpu(ent->e_blocks));

  if (block >= searched &&
      block < searched + numblocks) {




   *left = numblocks - (block - searched);
   return clus_to_blk(OMFS_SB(inode->i_sb),
    be64_to_cpu(ent->e_cluster)) +
    block - searched;
  }
  searched += numblocks;
  ent++;
 }
 return 0;
}
