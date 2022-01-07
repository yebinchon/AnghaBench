
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int sb; } ;
struct buffer_head {int b_end_io; scalar_t__ b_blocknr; } ;


 int BUG () ;
 int EIO ;
 int ML_BH_IO ;
 int ML_ERROR ;
 int READ ;
 scalar_t__ buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_jbd (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int mlog (int ,char*,...) ;
 int mlog_errno (int) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_getblk (int ,int ) ;
 int submit_bh (int ,struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int ocfs2_read_blocks_sync(struct ocfs2_super *osb, u64 block,
      unsigned int nr, struct buffer_head *bhs[])
{
 int status = 0;
 unsigned int i;
 struct buffer_head *bh;

 if (!nr) {
  mlog(ML_BH_IO, "No buffers will be read!\n");
  goto bail;
 }

 for (i = 0 ; i < nr ; i++) {
  if (bhs[i] == ((void*)0)) {
   bhs[i] = sb_getblk(osb->sb, block++);
   if (bhs[i] == ((void*)0)) {
    status = -EIO;
    mlog_errno(status);
    goto bail;
   }
  }
  bh = bhs[i];

  if (buffer_jbd(bh)) {
   mlog(ML_BH_IO,
        "trying to sync read a jbd "
        "managed bh (blocknr = %llu), skipping\n",
        (unsigned long long)bh->b_blocknr);
   continue;
  }

  if (buffer_dirty(bh)) {


   mlog(ML_ERROR,
        "trying to sync read a dirty "
        "buffer! (blocknr = %llu), skipping\n",
        (unsigned long long)bh->b_blocknr);
   continue;
  }

  lock_buffer(bh);
  if (buffer_jbd(bh)) {
   mlog(ML_ERROR,
        "block %llu had the JBD bit set "
        "while I was in lock_buffer!",
        (unsigned long long)bh->b_blocknr);
   BUG();
  }

  clear_buffer_uptodate(bh);
  get_bh(bh);
  bh->b_end_io = end_buffer_read_sync;
  submit_bh(READ, bh);
 }

 for (i = nr; i > 0; i--) {
  bh = bhs[i - 1];


  if (!buffer_jbd(bh))
   wait_on_buffer(bh);

  if (!buffer_uptodate(bh)) {



   status = -EIO;
   put_bh(bh);
   bhs[i - 1] = ((void*)0);
  }
 }

bail:
 return status;
}
