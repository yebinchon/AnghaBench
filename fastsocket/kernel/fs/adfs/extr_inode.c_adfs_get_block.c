
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_blocks; int i_sb; int i_ino; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;


 int EIO ;
 scalar_t__ __adfs_block_map (int ,int ,scalar_t__) ;
 int map_bh (struct buffer_head*,int ,scalar_t__) ;

__attribute__((used)) static int
adfs_get_block(struct inode *inode, sector_t block, struct buffer_head *bh,
        int create)
{
 if (!create) {
  if (block >= inode->i_blocks)
   goto abort_toobig;

  block = __adfs_block_map(inode->i_sb, inode->i_ino, block);
  if (block)
   map_bh(bh, inode->i_sb, block);
  return 0;
 }

 return -EIO;

abort_toobig:
 return 0;
}
