
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int sb_bsize_shift; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_glock {struct gfs2_sbd* gl_sbd; } ;
struct buffer_head {int dummy; } ;


 int BIO_RW_META ;
 int BUG_ON (int) ;
 int CREATE ;
 int READA ;
 int READ_SYNC ;
 int brelse (struct buffer_head*) ;
 int buffer_locked (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 struct buffer_head* gfs2_getbuf (struct gfs2_glock*,int ,int ) ;
 int gfs2_tune_get (struct gfs2_sbd*,int ) ;
 int gt_max_readahead ;
 int ll_rw_block (int,int,struct buffer_head**) ;
 int wait_on_buffer (struct buffer_head*) ;

struct buffer_head *gfs2_meta_ra(struct gfs2_glock *gl, u64 dblock, u32 extlen)
{
 struct gfs2_sbd *sdp = gl->gl_sbd;
 struct buffer_head *first_bh, *bh;
 u32 max_ra = gfs2_tune_get(sdp, gt_max_readahead) >>
     sdp->sd_sb.sb_bsize_shift;

 BUG_ON(!extlen);

 if (max_ra < 1)
  max_ra = 1;
 if (extlen > max_ra)
  extlen = max_ra;

 first_bh = gfs2_getbuf(gl, dblock, CREATE);

 if (buffer_uptodate(first_bh))
  goto out;
 if (!buffer_locked(first_bh))
  ll_rw_block(READ_SYNC | (1 << BIO_RW_META), 1, &first_bh);

 dblock++;
 extlen--;

 while (extlen) {
  bh = gfs2_getbuf(gl, dblock, CREATE);

  if (!buffer_uptodate(bh) && !buffer_locked(bh))
   ll_rw_block(READA, 1, &bh);
  brelse(bh);
  dblock++;
  extlen--;
  if (!buffer_locked(first_bh) && buffer_uptodate(first_bh))
   goto out;
 }

 wait_on_buffer(first_bh);
out:
 return first_bh;
}
