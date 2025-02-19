
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; int b_end_io; } ;


 int BUG_ON (int) ;
 int EIO ;
 int EROFS ;
 scalar_t__ OCFS2_SUPER_BLOCK_BLKNO ;
 int WRITE ;
 int buffer_jbd (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int end_buffer_write_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int mlog_entry (char*,unsigned long long,struct ocfs2_caching_info*) ;
 int mlog_exit (int) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 int ocfs2_metadata_cache_io_lock (struct ocfs2_caching_info*) ;
 int ocfs2_metadata_cache_io_unlock (struct ocfs2_caching_info*) ;
 int ocfs2_set_buffer_uptodate (struct ocfs2_caching_info*,struct buffer_head*) ;
 int put_bh (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int submit_bh (int ,struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int ocfs2_write_block(struct ocfs2_super *osb, struct buffer_head *bh,
        struct ocfs2_caching_info *ci)
{
 int ret = 0;

 mlog_entry("(bh->b_blocknr = %llu, ci=%p)\n",
     (unsigned long long)bh->b_blocknr, ci);

 BUG_ON(bh->b_blocknr < OCFS2_SUPER_BLOCK_BLKNO);
 BUG_ON(buffer_jbd(bh));




 if (ocfs2_is_hard_readonly(osb)) {
  ret = -EROFS;
  goto out;
 }

 ocfs2_metadata_cache_io_lock(ci);

 lock_buffer(bh);
 set_buffer_uptodate(bh);


 clear_buffer_dirty(bh);

 get_bh(bh);
 bh->b_end_io = end_buffer_write_sync;
 submit_bh(WRITE, bh);

 wait_on_buffer(bh);

 if (buffer_uptodate(bh)) {
  ocfs2_set_buffer_uptodate(ci, bh);
 } else {



  ret = -EIO;
  put_bh(bh);
 }

 ocfs2_metadata_cache_io_unlock(ci);
out:
 mlog_exit(ret);
 return ret;
}
