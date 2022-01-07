
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct gfs2_glock {struct gfs2_sbd* gl_sbd; } ;
struct gfs2_bufdata {struct gfs2_glock* bd_gl; } ;
struct buffer_head {int b_page; struct gfs2_bufdata* b_private; } ;


 struct gfs2_bufdata* gfs2_alloc_bufdata (struct gfs2_glock*,struct buffer_head*,int *) ;
 int gfs2_assert (struct gfs2_sbd*,int) ;
 int gfs2_buf_lops ;
 int gfs2_log_lock (struct gfs2_sbd*) ;
 int gfs2_log_unlock (struct gfs2_sbd*) ;
 int lock_buffer (struct buffer_head*) ;
 int lock_page (int ) ;
 int meta_lo_add (struct gfs2_sbd*,struct gfs2_bufdata*) ;
 int unlock_buffer (struct buffer_head*) ;
 int unlock_page (int ) ;

void gfs2_trans_add_meta(struct gfs2_glock *gl, struct buffer_head *bh)
{

 struct gfs2_sbd *sdp = gl->gl_sbd;
 struct gfs2_bufdata *bd;

 lock_buffer(bh);
 gfs2_log_lock(sdp);
 bd = bh->b_private;
 if (bd == ((void*)0)) {
  gfs2_log_unlock(sdp);
  unlock_buffer(bh);
  lock_page(bh->b_page);
  if (bh->b_private == ((void*)0))
   bd = gfs2_alloc_bufdata(gl, bh, &gfs2_buf_lops);
  unlock_page(bh->b_page);
  lock_buffer(bh);
  gfs2_log_lock(sdp);
 }
 gfs2_assert(sdp, bd->bd_gl == gl);
 meta_lo_add(sdp, bd);
 gfs2_log_unlock(sdp);
 unlock_buffer(bh);
}
