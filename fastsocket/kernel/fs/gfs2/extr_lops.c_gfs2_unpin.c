
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_ail_lock; } ;
struct gfs2_glock {int gl_flags; int gl_ail_count; int gl_ail_list; } ;
struct gfs2_bufdata {struct gfs2_glock* bd_gl; int bd_ail_st_list; struct gfs2_ail* bd_ail; int bd_ail_gl_list; } ;
struct gfs2_ail {int ai_ail1_list; } ;
struct buffer_head {struct gfs2_bufdata* b_private; } ;


 int BUG_ON (int) ;
 int GLF_LFLUSH ;
 int atomic_inc (int *) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_is_rgrp (struct gfs2_bufdata*) ;
 int buffer_pinned (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int clear_bit (int ,int *) ;
 int clear_buffer_pinned (struct buffer_head*) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int maybe_release_space (struct gfs2_bufdata*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_gfs2_pin (struct gfs2_bufdata*,int ) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static void gfs2_unpin(struct gfs2_sbd *sdp, struct buffer_head *bh,
         struct gfs2_ail *ai)
{
 struct gfs2_bufdata *bd = bh->b_private;

 BUG_ON(!buffer_uptodate(bh));
 BUG_ON(!buffer_pinned(bh));

 lock_buffer(bh);
 mark_buffer_dirty(bh);
 clear_buffer_pinned(bh);

 if (buffer_is_rgrp(bd))
  maybe_release_space(bd);

 spin_lock(&sdp->sd_ail_lock);
 if (bd->bd_ail) {
  list_del(&bd->bd_ail_st_list);
  brelse(bh);
 } else {
  struct gfs2_glock *gl = bd->bd_gl;
  list_add(&bd->bd_ail_gl_list, &gl->gl_ail_list);
  atomic_inc(&gl->gl_ail_count);
 }
 bd->bd_ail = ai;
 list_add(&bd->bd_ail_st_list, &ai->ai_ail1_list);
 spin_unlock(&sdp->sd_ail_lock);

 clear_bit(GLF_LFLUSH, &bd->bd_gl->gl_flags);
 trace_gfs2_pin(bd, 0);
 unlock_buffer(bh);
}
