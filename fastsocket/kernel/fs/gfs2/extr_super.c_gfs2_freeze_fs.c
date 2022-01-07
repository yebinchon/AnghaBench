
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_freeze_lock; int sd_freeze_count; int sd_freeze_gh; } ;


 int gfs2_lock_fs_check_clean (struct gfs2_sbd*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int gfs2_freeze_fs(struct gfs2_sbd *sdp)
{
 int error = 0;

 mutex_lock(&sdp->sd_freeze_lock);

 if (!sdp->sd_freeze_count++) {
  error = gfs2_lock_fs_check_clean(sdp, &sdp->sd_freeze_gh);
  if (error)
   sdp->sd_freeze_count--;
 }

 mutex_unlock(&sdp->sd_freeze_lock);

 return error;
}
