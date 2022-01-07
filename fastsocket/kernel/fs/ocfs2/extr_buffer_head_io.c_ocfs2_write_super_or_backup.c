
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int sb; } ;
struct buffer_head {int b_end_io; int b_blocknr; } ;


 int BUG_ON (int ) ;
 int EIO ;
 int EROFS ;
 int WRITE ;
 int buffer_jbd (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int end_buffer_write_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int mlog_entry_void () ;
 int mlog_exit (int) ;
 int ocfs2_check_super_or_backup (int ,int ) ;
 scalar_t__ ocfs2_is_hard_readonly (struct ocfs2_super*) ;
 scalar_t__ ocfs2_is_soft_readonly (struct ocfs2_super*) ;
 int put_bh (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int submit_bh (int ,struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int ocfs2_write_super_or_backup(struct ocfs2_super *osb,
    struct buffer_head *bh)
{
 int ret = 0;

 mlog_entry_void();

 BUG_ON(buffer_jbd(bh));
 ocfs2_check_super_or_backup(osb->sb, bh->b_blocknr);

 if (ocfs2_is_hard_readonly(osb) || ocfs2_is_soft_readonly(osb)) {
  ret = -EROFS;
  goto out;
 }

 lock_buffer(bh);
 set_buffer_uptodate(bh);


 clear_buffer_dirty(bh);

 get_bh(bh);
 bh->b_end_io = end_buffer_write_sync;
 submit_bh(WRITE, bh);

 wait_on_buffer(bh);

 if (!buffer_uptodate(bh)) {
  ret = -EIO;
  put_bh(bh);
 }

out:
 mlog_exit(ret);
 return ret;
}
