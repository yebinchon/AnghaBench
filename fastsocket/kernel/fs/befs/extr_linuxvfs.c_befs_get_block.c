
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
typedef int befs_data_stream ;
typedef int befs_block_run ;
struct TYPE_3__ {int ds; } ;
struct TYPE_4__ {TYPE_1__ i_data; } ;


 int BAD_IADDR ;
 TYPE_2__* BEFS_I (struct inode*) ;
 int BEFS_OK ;
 int EFBIG ;
 int EIO ;
 int EPERM ;
 int befs_debug (struct super_block*,char*,int ,int ,...) ;
 int befs_error (struct super_block*,char*,int ,int ) ;
 int befs_fblock2brun (struct super_block*,int *,int ,int *) ;
 scalar_t__ iaddr2blockno (struct super_block*,int *) ;
 int map_bh (struct buffer_head*,struct super_block*,scalar_t__) ;

__attribute__((used)) static int
befs_get_block(struct inode *inode, sector_t block,
        struct buffer_head *bh_result, int create)
{
 struct super_block *sb = inode->i_sb;
 befs_data_stream *ds = &BEFS_I(inode)->i_data.ds;
 befs_block_run run = BAD_IADDR;
 int res = 0;
 ulong disk_off;

 befs_debug(sb, "---> befs_get_block() for inode %lu, block %ld",
     inode->i_ino, block);

 if (block < 0) {
  befs_error(sb, "befs_get_block() was asked for a block "
      "number less than zero: block %ld in inode %lu",
      block, inode->i_ino);
  return -EIO;
 }

 if (create) {
  befs_error(sb, "befs_get_block() was asked to write to "
      "block %ld in inode %lu", block, inode->i_ino);
  return -EPERM;
 }

 res = befs_fblock2brun(sb, ds, block, &run);
 if (res != BEFS_OK) {
  befs_error(sb,
      "<--- befs_get_block() for inode %lu, block "
      "%ld ERROR", inode->i_ino, block);
  return -EFBIG;
 }

 disk_off = (ulong) iaddr2blockno(sb, &run);

 map_bh(bh_result, inode->i_sb, disk_off);

 befs_debug(sb, "<--- befs_get_block() for inode %lu, block %ld, "
     "disk address %lu", inode->i_ino, block, disk_off);

 return 0;
}
