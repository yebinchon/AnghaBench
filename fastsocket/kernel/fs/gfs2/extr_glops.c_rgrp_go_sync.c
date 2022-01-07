
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_rgrpd {int dummy; } ;
struct gfs2_glock {scalar_t__ gl_state; int gl_spin; struct gfs2_rgrpd* gl_object; int gl_sbd; int gl_flags; } ;
struct address_space {int dummy; } ;


 int BUG_ON (int) ;
 int GLF_DIRTY ;
 scalar_t__ LM_ST_EXCLUSIVE ;
 int filemap_fdatawait (struct address_space*) ;
 int filemap_fdatawrite (struct address_space*) ;
 int gfs2_ail_empty_gl (struct gfs2_glock*) ;
 int gfs2_free_clones (struct gfs2_rgrpd*) ;
 struct address_space* gfs2_glock2aspace (struct gfs2_glock*) ;
 int gfs2_log_flush (int ,struct gfs2_glock*) ;
 int mapping_set_error (struct address_space*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void rgrp_go_sync(struct gfs2_glock *gl)
{
 struct address_space *metamapping = gfs2_glock2aspace(gl);
 struct gfs2_rgrpd *rgd;
 int error;

 if (!test_and_clear_bit(GLF_DIRTY, &gl->gl_flags))
  return;
 BUG_ON(gl->gl_state != LM_ST_EXCLUSIVE);

 gfs2_log_flush(gl->gl_sbd, gl);
 filemap_fdatawrite(metamapping);
 error = filemap_fdatawait(metamapping);
        mapping_set_error(metamapping, error);
 gfs2_ail_empty_gl(gl);

 spin_lock(&gl->gl_spin);
 rgd = gl->gl_object;
 if (rgd)
  gfs2_free_clones(rgd);
 spin_unlock(&gl->gl_spin);
}
