
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_freeze_lock; int sd_freeze_gh; scalar_t__ sd_freeze_count; } ;


 int gfs2_glock_dq_uninit (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gfs2_unfreeze_fs(struct gfs2_sbd *sdp)
{
 mutex_lock(&sdp->sd_freeze_lock);

 if (sdp->sd_freeze_count && !--sdp->sd_freeze_count)
  gfs2_glock_dq_uninit(&sdp->sd_freeze_gh);

 mutex_unlock(&sdp->sd_freeze_lock);
}
