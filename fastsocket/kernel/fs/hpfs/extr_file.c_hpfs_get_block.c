
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; scalar_t__ i_blocks; int i_ino; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
typedef int secno ;
struct TYPE_2__ {int mmu_private; } ;


 int BUG () ;
 int EIO ;
 int ENOSPC ;
 int hpfs_add_sector_to_btree (int ,int ,int,scalar_t__) ;
 int hpfs_bmap (struct inode*,int) ;
 TYPE_1__* hpfs_i (struct inode*) ;
 int hpfs_truncate_btree (int ,int ,int,scalar_t__) ;
 int map_bh (struct buffer_head*,int ,int) ;
 int set_buffer_new (struct buffer_head*) ;

__attribute__((used)) static int hpfs_get_block(struct inode *inode, sector_t iblock, struct buffer_head *bh_result, int create)
{
 secno s;
 s = hpfs_bmap(inode, iblock);
 if (s) {
  map_bh(bh_result, inode->i_sb, s);
  return 0;
 }
 if (!create) return 0;
 if (iblock<<9 != hpfs_i(inode)->mmu_private) {
  BUG();
  return -EIO;
 }
 if ((s = hpfs_add_sector_to_btree(inode->i_sb, inode->i_ino, 1, inode->i_blocks - 1)) == -1) {
  hpfs_truncate_btree(inode->i_sb, inode->i_ino, 1, inode->i_blocks - 1);
  return -ENOSPC;
 }
 inode->i_blocks++;
 hpfs_i(inode)->mmu_private += 512;
 set_buffer_new(bh_result);
 map_bh(bh_result, inode->i_sb, s);
 return 0;
}
