
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int sb_bsize; } ;
struct gfs2_sbd {int sd_log_in_flight; TYPE_2__* sd_vfs; TYPE_1__ sd_sb; int sd_log_flush_head; } ;
struct buffer_head {int b_state; int b_end_io; struct buffer_head* b_private; int b_bdev; int b_size; int b_blocknr; int b_page; int b_count; } ;
struct TYPE_4__ {int s_bdev; } ;


 int BH_Lock ;
 int BH_Mapped ;
 int BH_Uptodate ;
 int GFP_NOFS ;
 int WRITE ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int bh_offset (struct buffer_head*) ;
 int gfs2_bh_pool ;
 int gfs2_fake_write_endio ;
 int gfs2_log_bmap (struct gfs2_sbd*,int ) ;
 int gfs2_log_incr_head (struct gfs2_sbd*) ;
 struct buffer_head* mempool_alloc (int ,int ) ;
 int set_bh_page (struct buffer_head*,int ,int ) ;
 int submit_bh (int ,struct buffer_head*) ;

__attribute__((used)) static void gfs2_log_write_buf(struct gfs2_sbd *sdp, struct buffer_head *real)
{
 u64 blkno = gfs2_log_bmap(sdp, sdp->sd_log_flush_head);
 struct buffer_head *bh;

 bh = mempool_alloc(gfs2_bh_pool, GFP_NOFS);
 atomic_set(&bh->b_count, 1);
 bh->b_state = (1 << BH_Mapped) | (1 << BH_Uptodate) | (1 << BH_Lock);
 set_bh_page(bh, real->b_page, bh_offset(real));
 bh->b_blocknr = blkno;
 bh->b_size = sdp->sd_sb.sb_bsize;
 bh->b_bdev = sdp->sd_vfs->s_bdev;
 bh->b_private = real;
 bh->b_end_io = gfs2_fake_write_endio;

 gfs2_log_incr_head(sdp);
 atomic_inc(&sdp->sd_log_in_flight);

 submit_bh(WRITE, bh);
}
