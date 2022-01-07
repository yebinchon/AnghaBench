
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_flags; } ;
struct gfs2_glock {scalar_t__ gl_state; struct gfs2_sbd* gl_sbd; } ;


 scalar_t__ LM_ST_UNLOCKED ;
 int SDF_JOURNAL_LIVE ;
 int gfs2_log_shutdown (struct gfs2_sbd*) ;
 int gfs2_meta_syncfs (struct gfs2_sbd*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void trans_go_sync(struct gfs2_glock *gl)
{
 struct gfs2_sbd *sdp = gl->gl_sbd;

 if (gl->gl_state != LM_ST_UNLOCKED &&
     test_bit(SDF_JOURNAL_LIVE, &sdp->sd_flags)) {
  gfs2_meta_syncfs(sdp);
  gfs2_log_shutdown(sdp);
 }
}
