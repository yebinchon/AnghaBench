
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; int s_blocksize; } ;
struct msdos_sb_info {int fats; int fat_length; int fat_inode; } ;
struct buffer_head {int b_blocknr; int b_data; } ;
typedef int sector_t ;


 int ENOMEM ;
 struct msdos_sb_info* MSDOS_SB (struct super_block*) ;
 int MS_SYNCHRONOUS ;
 int brelse (struct buffer_head*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,int ) ;
 int memcpy (int ,int ,int ) ;
 struct buffer_head* sb_getblk (struct super_block*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;

__attribute__((used)) static int fat_mirror_bhs(struct super_block *sb, struct buffer_head **bhs,
     int nr_bhs)
{
 struct msdos_sb_info *sbi = MSDOS_SB(sb);
 struct buffer_head *c_bh;
 int err, n, copy;

 err = 0;
 for (copy = 1; copy < sbi->fats; copy++) {
  sector_t backup_fat = sbi->fat_length * copy;

  for (n = 0; n < nr_bhs; n++) {
   c_bh = sb_getblk(sb, backup_fat + bhs[n]->b_blocknr);
   if (!c_bh) {
    err = -ENOMEM;
    goto error;
   }
   memcpy(c_bh->b_data, bhs[n]->b_data, sb->s_blocksize);
   set_buffer_uptodate(c_bh);
   mark_buffer_dirty_inode(c_bh, sbi->fat_inode);
   if (sb->s_flags & MS_SYNCHRONOUS)
    err = sync_dirty_buffer(c_bh);
   brelse(c_bh);
   if (err)
    goto error;
  }
 }
error:
 return err;
}
