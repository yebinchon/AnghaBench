
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct gfs2_sbd {void* sd_statfs_inode; void* sd_rindex; void* sd_quota_inode; scalar_t__ sd_rindex_uptodate; TYPE_1__* sd_master_dir; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int UNDO ;
 int fs_err (struct gfs2_sbd*,char*,int) ;
 int gfs2_clear_rgrpd (struct gfs2_sbd*) ;
 void* gfs2_lookup_simple (struct inode*,char*) ;
 int gfs2_rindex_update (struct gfs2_sbd*) ;
 int init_journal (struct gfs2_sbd*,int) ;
 int iput (void*) ;

__attribute__((used)) static int init_inodes(struct gfs2_sbd *sdp, int undo)
{
 int error = 0;
 struct inode *master = sdp->sd_master_dir->d_inode;

 if (undo)
  goto fail_qinode;

 error = init_journal(sdp, undo);
 if (error)
  goto fail;


 sdp->sd_statfs_inode = gfs2_lookup_simple(master, "statfs");
 if (IS_ERR(sdp->sd_statfs_inode)) {
  error = PTR_ERR(sdp->sd_statfs_inode);
  fs_err(sdp, "can't read in statfs inode: %d\n", error);
  goto fail_journal;
 }


 sdp->sd_rindex = gfs2_lookup_simple(master, "rindex");
 if (IS_ERR(sdp->sd_rindex)) {
  error = PTR_ERR(sdp->sd_rindex);
  fs_err(sdp, "can't get resource index inode: %d\n", error);
  goto fail_statfs;
 }
 sdp->sd_rindex_uptodate = 0;


 sdp->sd_quota_inode = gfs2_lookup_simple(master, "quota");
 if (IS_ERR(sdp->sd_quota_inode)) {
  error = PTR_ERR(sdp->sd_quota_inode);
  fs_err(sdp, "can't get quota file inode: %d\n", error);
  goto fail_rindex;
 }

 error = gfs2_rindex_update(sdp);
 if (error)
  goto fail_qinode;

 return 0;

fail_qinode:
 iput(sdp->sd_quota_inode);
fail_rindex:
 gfs2_clear_rgrpd(sdp);
 iput(sdp->sd_rindex);
fail_statfs:
 iput(sdp->sd_statfs_inode);
fail_journal:
 init_journal(sdp, UNDO);
fail:
 return error;
}
