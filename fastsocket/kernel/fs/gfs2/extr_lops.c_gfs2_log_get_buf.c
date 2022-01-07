
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_sbd {int sd_log_in_flight; int sd_vfs; int sd_log_flush_head; } ;
struct buffer_head {int b_end_io; struct gfs2_sbd* b_private; int b_size; int b_data; } ;


 int atomic_inc (int *) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int gfs2_log_bmap (struct gfs2_sbd*,int ) ;
 int gfs2_log_incr_head (struct gfs2_sbd*) ;
 int gfs2_log_write_endio ;
 int lock_buffer (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 struct buffer_head* sb_getblk (int ,int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *gfs2_log_get_buf(struct gfs2_sbd *sdp)
{
 u64 blkno = gfs2_log_bmap(sdp, sdp->sd_log_flush_head);
 struct buffer_head *bh;

 bh = sb_getblk(sdp->sd_vfs, blkno);
 lock_buffer(bh);
 memset(bh->b_data, 0, bh->b_size);
 set_buffer_uptodate(bh);
 clear_buffer_dirty(bh);
 gfs2_log_incr_head(sdp);
 atomic_inc(&sdp->sd_log_in_flight);
 bh->b_private = sdp;
 bh->b_end_io = gfs2_log_write_endio;

 return bh;
}
