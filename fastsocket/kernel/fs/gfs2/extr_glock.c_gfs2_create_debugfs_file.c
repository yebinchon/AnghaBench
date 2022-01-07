
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {void* debugfs_dentry_sbstats; int debugfs_dir; void* debugfs_dentry_glstats; void* debugfs_dentry_glocks; int sd_table_name; } ;


 int ENOMEM ;
 int S_IFREG ;
 int S_IRUGO ;
 int debugfs_create_dir (int ,int ) ;
 void* debugfs_create_file (char*,int,int ,struct gfs2_sbd*,int *) ;
 int gfs2_delete_debugfs_file (struct gfs2_sbd*) ;
 int gfs2_glocks_fops ;
 int gfs2_glstats_fops ;
 int gfs2_root ;
 int gfs2_sbstats_fops ;

int gfs2_create_debugfs_file(struct gfs2_sbd *sdp)
{
 sdp->debugfs_dir = debugfs_create_dir(sdp->sd_table_name, gfs2_root);
 if (!sdp->debugfs_dir)
  return -ENOMEM;
 sdp->debugfs_dentry_glocks = debugfs_create_file("glocks",
        S_IFREG | S_IRUGO,
        sdp->debugfs_dir, sdp,
        &gfs2_glocks_fops);
 if (!sdp->debugfs_dentry_glocks)
  goto fail;

 sdp->debugfs_dentry_glstats = debugfs_create_file("glstats",
       S_IFREG | S_IRUGO,
       sdp->debugfs_dir, sdp,
       &gfs2_glstats_fops);
 if (!sdp->debugfs_dentry_glstats)
  goto fail;

 sdp->debugfs_dentry_sbstats = debugfs_create_file("sbstats",
       S_IFREG | S_IRUGO,
       sdp->debugfs_dir, sdp,
       &gfs2_sbstats_fops);
 if (!sdp->debugfs_dentry_sbstats)
  goto fail;

 return 0;
fail:
 gfs2_delete_debugfs_file(sdp);
 return -ENOMEM;
}
