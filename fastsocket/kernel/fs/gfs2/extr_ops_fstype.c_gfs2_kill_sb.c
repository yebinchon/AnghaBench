
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct gfs2_sbd {int * sd_master_dir; int * sd_root_dir; } ;


 int dput (int *) ;
 int gfs2_delete_debugfs_file (struct gfs2_sbd*) ;
 int gfs2_meta_syncfs (struct gfs2_sbd*) ;
 int kill_block_super (struct super_block*) ;
 int shrink_dcache_sb (struct super_block*) ;

__attribute__((used)) static void gfs2_kill_sb(struct super_block *sb)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;

 if (sdp == ((void*)0)) {
  kill_block_super(sb);
  return;
 }

 gfs2_meta_syncfs(sdp);
 dput(sdp->sd_root_dir);
 dput(sdp->sd_master_dir);
 sdp->sd_root_dir = ((void*)0);
 sdp->sd_master_dir = ((void*)0);
 shrink_dcache_sb(sb);
 gfs2_delete_debugfs_file(sdp);
 kill_block_super(sb);
}
