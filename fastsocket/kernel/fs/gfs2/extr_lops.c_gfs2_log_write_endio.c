
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_log_flush_wait; int sd_log_in_flight; } ;
struct buffer_head {struct gfs2_sbd* b_private; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int end_buffer_write_sync (struct buffer_head*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void gfs2_log_write_endio(struct buffer_head *bh, int uptodate)
{
 struct gfs2_sbd *sdp = bh->b_private;
 bh->b_private = ((void*)0);

 end_buffer_write_sync(bh, uptodate);
 if (atomic_dec_and_test(&sdp->sd_log_in_flight))
  wake_up(&sdp->sd_log_flush_wait);
}
