
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int sd_statfs_force_sync; int sd_quota_wait; } ;


 int wake_up (int *) ;

void gfs2_wake_up_statfs(struct gfs2_sbd *sdp) {
 if (!sdp->sd_statfs_force_sync) {
  sdp->sd_statfs_force_sync = 1;
  wake_up(&sdp->sd_quota_wait);
 }
}
