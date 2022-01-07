
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int * debugfs_dir; int * debugfs_dentry_sbstats; int * debugfs_dentry_glstats; int * debugfs_dentry_glocks; } ;


 int debugfs_remove (int *) ;

void gfs2_delete_debugfs_file(struct gfs2_sbd *sdp)
{
 if (sdp->debugfs_dir) {
  if (sdp->debugfs_dentry_glocks) {
   debugfs_remove(sdp->debugfs_dentry_glocks);
   sdp->debugfs_dentry_glocks = ((void*)0);
  }
  if (sdp->debugfs_dentry_glstats) {
   debugfs_remove(sdp->debugfs_dentry_glstats);
   sdp->debugfs_dentry_glstats = ((void*)0);
  }
  if (sdp->debugfs_dentry_sbstats) {
   debugfs_remove(sdp->debugfs_dentry_sbstats);
   sdp->debugfs_dentry_sbstats = ((void*)0);
  }
  debugfs_remove(sdp->debugfs_dir);
  sdp->debugfs_dir = ((void*)0);
 }
}
