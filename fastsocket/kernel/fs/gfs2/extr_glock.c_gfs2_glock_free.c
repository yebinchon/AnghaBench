
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_glock_wait; int sd_glock_disposal; } ;
struct gfs2_glock {int gl_rcu; struct gfs2_sbd* gl_sbd; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int call_rcu (int *,int ) ;
 int gfs2_glock_dealloc ;
 int wake_up (int *) ;

void gfs2_glock_free(struct gfs2_glock *gl)
{
 struct gfs2_sbd *sdp = gl->gl_sbd;

 call_rcu(&gl->gl_rcu, gfs2_glock_dealloc);
 if (atomic_dec_and_test(&sdp->sd_glock_disposal))
  wake_up(&sdp->sd_glock_wait);
}
