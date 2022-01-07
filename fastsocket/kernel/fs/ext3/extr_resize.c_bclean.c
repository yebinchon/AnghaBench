
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct buffer_head {int b_data; } ;
typedef int handle_t ;
typedef int ext3_fsblk_t ;


 int EIO ;
 struct buffer_head* ERR_PTR (int) ;
 int brelse (struct buffer_head*) ;
 int ext3_journal_get_write_access (int *,struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *bclean(handle_t *handle, struct super_block *sb,
      ext3_fsblk_t blk)
{
 struct buffer_head *bh;
 int err;

 bh = sb_getblk(sb, blk);
 if (!bh)
  return ERR_PTR(-EIO);
 if ((err = ext3_journal_get_write_access(handle, bh))) {
  brelse(bh);
  bh = ERR_PTR(err);
 } else {
  lock_buffer(bh);
  memset(bh->b_data, 0, sb->s_blocksize);
  set_buffer_uptodate(bh);
  unlock_buffer(bh);
 }

 return bh;
}
