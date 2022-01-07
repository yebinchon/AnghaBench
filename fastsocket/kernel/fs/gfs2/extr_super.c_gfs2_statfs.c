
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct kstatfs {int f_namelen; scalar_t__ f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; scalar_t__ f_bfree; int f_blocks; int f_bsize; int f_type; } ;
struct gfs2_statfs_change_host {scalar_t__ sc_free; scalar_t__ sc_dinodes; int sc_total; } ;
struct TYPE_4__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_2__ sd_sb; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_3__ {struct super_block* i_sb; } ;


 int GFS2_FNAMESIZE ;
 int GFS2_MAGIC ;
 int gfs2_rindex_update (struct gfs2_sbd*) ;
 int gfs2_statfs_i (struct gfs2_sbd*,struct gfs2_statfs_change_host*) ;
 int gfs2_statfs_slow (struct gfs2_sbd*,struct gfs2_statfs_change_host*) ;
 scalar_t__ gfs2_tune_get (struct gfs2_sbd*,int ) ;
 int gt_statfs_slow ;

__attribute__((used)) static int gfs2_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_inode->i_sb;
 struct gfs2_sbd *sdp = sb->s_fs_info;
 struct gfs2_statfs_change_host sc;
 int error;

 error = gfs2_rindex_update(sdp);
 if (error)
  return error;

 if (gfs2_tune_get(sdp, gt_statfs_slow))
  error = gfs2_statfs_slow(sdp, &sc);
 else
  error = gfs2_statfs_i(sdp, &sc);

 if (error)
  return error;

 buf->f_type = GFS2_MAGIC;
 buf->f_bsize = sdp->sd_sb.sb_bsize;
 buf->f_blocks = sc.sc_total;
 buf->f_bfree = sc.sc_free;
 buf->f_bavail = sc.sc_free;
 buf->f_files = sc.sc_dinodes + sc.sc_free;
 buf->f_ffree = sc.sc_free;
 buf->f_namelen = GFS2_FNAMESIZE;

 return 0;
}
