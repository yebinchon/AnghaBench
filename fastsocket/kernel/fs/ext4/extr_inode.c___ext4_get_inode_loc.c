
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct ext4_iloc {int block_group; int offset; struct buffer_head* bh; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int b_end_io; int b_size; int b_data; } ;
typedef int ext4_fsblk_t ;
struct TYPE_2__ {int s_inode_readahead_blks; } ;


 int EIO ;
 int EXT4_BLOCK_SIZE (struct super_block*) ;
 int EXT4_FEATURE_RO_COMPAT_GDT_CSUM ;
 scalar_t__ EXT4_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 int EXT4_INODES_PER_GROUP (struct super_block*) ;
 int EXT4_INODE_SIZE (struct super_block*) ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 int READ_META ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 scalar_t__ buffer_write_io_error (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int ext4_error (struct super_block*,char*,int,int) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,int,int *) ;
 int ext4_inode_bitmap (struct super_block*,struct ext4_group_desc*) ;
 int ext4_inode_table (struct super_block*,struct ext4_group_desc*) ;
 scalar_t__ ext4_itable_unused_count (struct super_block*,struct ext4_group_desc*) ;
 scalar_t__ ext4_test_bit (int,int ) ;
 int ext4_valid_inum (struct super_block*,int) ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 int sb_breadahead (struct super_block*,int ) ;
 struct buffer_head* sb_getblk (struct super_block*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int submit_bh (int ,struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

__attribute__((used)) static int __ext4_get_inode_loc(struct inode *inode,
    struct ext4_iloc *iloc, int in_mem)
{
 struct ext4_group_desc *gdp;
 struct buffer_head *bh;
 struct super_block *sb = inode->i_sb;
 ext4_fsblk_t block;
 int inodes_per_block, inode_offset;

 iloc->bh = ((void*)0);
 if (!ext4_valid_inum(sb, inode->i_ino))
  return -EIO;

 iloc->block_group = (inode->i_ino - 1) / EXT4_INODES_PER_GROUP(sb);
 gdp = ext4_get_group_desc(sb, iloc->block_group, ((void*)0));
 if (!gdp)
  return -EIO;




 inodes_per_block = (EXT4_BLOCK_SIZE(sb) / EXT4_INODE_SIZE(sb));
 inode_offset = ((inode->i_ino - 1) %
   EXT4_INODES_PER_GROUP(sb));
 block = ext4_inode_table(sb, gdp) + (inode_offset / inodes_per_block);
 iloc->offset = (inode_offset % inodes_per_block) * EXT4_INODE_SIZE(sb);

 bh = sb_getblk(sb, block);
 if (!bh) {
  ext4_error(sb, "unable to read inode block - "
      "inode=%lu, block=%llu", inode->i_ino, block);
  return -EIO;
 }
 if (!buffer_uptodate(bh)) {
  lock_buffer(bh);







  if (buffer_write_io_error(bh) && !buffer_uptodate(bh))
   set_buffer_uptodate(bh);

  if (buffer_uptodate(bh)) {

   unlock_buffer(bh);
   goto has_buffer;
  }






  if (in_mem) {
   struct buffer_head *bitmap_bh;
   int i, start;

   start = inode_offset & ~(inodes_per_block - 1);


   bitmap_bh = sb_getblk(sb, ext4_inode_bitmap(sb, gdp));
   if (!bitmap_bh)
    goto make_io;






   if (!buffer_uptodate(bitmap_bh)) {
    brelse(bitmap_bh);
    goto make_io;
   }
   for (i = start; i < start + inodes_per_block; i++) {
    if (i == inode_offset)
     continue;
    if (ext4_test_bit(i, bitmap_bh->b_data))
     break;
   }
   brelse(bitmap_bh);
   if (i == start + inodes_per_block) {

    memset(bh->b_data, 0, bh->b_size);
    set_buffer_uptodate(bh);
    unlock_buffer(bh);
    goto has_buffer;
   }
  }

make_io:




  if (EXT4_SB(sb)->s_inode_readahead_blks) {
   ext4_fsblk_t b, end, table;
   unsigned num;

   table = ext4_inode_table(sb, gdp);

   b = block & ~(EXT4_SB(sb)->s_inode_readahead_blks-1);
   if (table > b)
    b = table;
   end = b + EXT4_SB(sb)->s_inode_readahead_blks;
   num = EXT4_INODES_PER_GROUP(sb);
   if (EXT4_HAS_RO_COMPAT_FEATURE(sb,
           EXT4_FEATURE_RO_COMPAT_GDT_CSUM))
    num -= ext4_itable_unused_count(sb, gdp);
   table += num / inodes_per_block;
   if (end > table)
    end = table;
   while (b <= end)
    sb_breadahead(sb, b++);
  }






  get_bh(bh);
  bh->b_end_io = end_buffer_read_sync;
  submit_bh(READ_META, bh);
  wait_on_buffer(bh);
  if (!buffer_uptodate(bh)) {
   ext4_error(sb, "unable to read inode block - inode=%lu,"
       " block=%llu", inode->i_ino, block);
   brelse(bh);
   return -EIO;
  }
 }
has_buffer:
 iloc->bh = bh;
 return 0;
}
