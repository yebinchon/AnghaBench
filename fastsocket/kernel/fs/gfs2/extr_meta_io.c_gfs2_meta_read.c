
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct gfs2_trans {scalar_t__ tr_touched; } ;
struct gfs2_sbd {int sd_flags; } ;
struct gfs2_glock {struct gfs2_sbd* gl_sbd; } ;
struct buffer_head {int b_end_io; } ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;


 int BIO_RW_META ;
 int CREATE ;
 int DIO_WAIT ;
 int EIO ;
 int READ_SYNC ;
 int SDF_SHUTDOWN ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 TYPE_1__* current ;
 int end_buffer_read_sync ;
 int get_bh (struct buffer_head*) ;
 struct buffer_head* gfs2_getbuf (struct gfs2_glock*,int ,int ) ;
 int gfs2_io_error_bh (struct gfs2_sbd*,struct buffer_head*) ;
 int lock_buffer (struct buffer_head*) ;
 int submit_bh (int,struct buffer_head*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

int gfs2_meta_read(struct gfs2_glock *gl, u64 blkno, int flags,
     struct buffer_head **bhp)
{
 struct gfs2_sbd *sdp = gl->gl_sbd;
 struct buffer_head *bh;

 if (unlikely(test_bit(SDF_SHUTDOWN, &sdp->sd_flags)))
  return -EIO;

 *bhp = bh = gfs2_getbuf(gl, blkno, CREATE);

 lock_buffer(bh);
 if (buffer_uptodate(bh)) {
  unlock_buffer(bh);
  return 0;
 }
 bh->b_end_io = end_buffer_read_sync;
 get_bh(bh);
 submit_bh(READ_SYNC | (1 << BIO_RW_META), bh);
 if (!(flags & DIO_WAIT))
  return 0;

 wait_on_buffer(bh);
 if (unlikely(!buffer_uptodate(bh))) {
  struct gfs2_trans *tr = current->journal_info;
  if (tr && tr->tr_touched)
   gfs2_io_error_bh(sdp, bh);
  brelse(bh);
  return -EIO;
 }

 return 0;
}
