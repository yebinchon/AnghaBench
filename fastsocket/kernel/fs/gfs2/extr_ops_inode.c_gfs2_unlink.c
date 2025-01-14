
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int rd_gl; } ;
struct TYPE_2__ {scalar_t__ i_nlink; } ;
struct gfs2_inode {TYPE_1__ i_inode; int i_no_addr; int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {int d_name; struct inode* d_inode; } ;


 int ENOENT ;
 int EROFS ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int LM_ST_EXCLUSIVE ;
 int RES_DINODE ;
 scalar_t__ RES_LEAF ;
 scalar_t__ RES_RG_BIT ;
 struct gfs2_rgrpd* gfs2_blk2rgrpd (struct gfs2_sbd*,int ,int) ;
 int gfs2_change_nlink (struct gfs2_inode*,int) ;
 int gfs2_dir_del (struct gfs2_inode*,int *) ;
 int gfs2_glock_dq (struct gfs2_holder*) ;
 int gfs2_glock_nq (struct gfs2_holder*) ;
 int gfs2_holder_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;
 int gfs2_rindex_update (struct gfs2_sbd*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,scalar_t__,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int gfs2_unlink_ok (struct gfs2_inode*,int *,struct gfs2_inode*) ;

__attribute__((used)) static int gfs2_unlink(struct inode *dir, struct dentry *dentry)
{
 struct gfs2_inode *dip = GFS2_I(dir);
 struct gfs2_sbd *sdp = GFS2_SB(dir);
 struct gfs2_inode *ip = GFS2_I(dentry->d_inode);
 struct gfs2_holder ghs[3];
 struct gfs2_rgrpd *rgd;
 int error;

 error = gfs2_rindex_update(sdp);
 if (error)
  return error;

 error = -EROFS;

 gfs2_holder_init(dip->i_gl, LM_ST_EXCLUSIVE, 0, ghs);
 gfs2_holder_init(ip->i_gl, LM_ST_EXCLUSIVE, 0, ghs + 1);

 rgd = gfs2_blk2rgrpd(sdp, ip->i_no_addr, 1);
 if (!rgd)
  goto out_inodes;
 gfs2_holder_init(rgd->rd_gl, LM_ST_EXCLUSIVE, 0, ghs + 2);


 error = gfs2_glock_nq(ghs);
 if (error)
  goto out_parent;

 error = gfs2_glock_nq(ghs + 1);
 if (error)
  goto out_child;

 error = -ENOENT;
 if (ip->i_inode.i_nlink == 0)
  goto out_rgrp;

 error = gfs2_glock_nq(ghs + 2);
 if (error)
  goto out_rgrp;

 error = gfs2_unlink_ok(dip, &dentry->d_name, ip);
 if (error)
  goto out_gunlock;

 error = gfs2_trans_begin(sdp, 2*RES_DINODE + RES_LEAF + RES_RG_BIT, 0);
 if (error)
  goto out_gunlock;

 error = gfs2_dir_del(dip, &dentry->d_name);
        if (error)
                goto out_end_trans;

 error = gfs2_change_nlink(ip, -1);

out_end_trans:
 gfs2_trans_end(sdp);
out_gunlock:
 gfs2_glock_dq(ghs + 2);
out_rgrp:
 gfs2_glock_dq(ghs + 1);
out_child:
 gfs2_glock_dq(ghs);
out_parent:
 gfs2_holder_uninit(ghs + 2);
out_inodes:
 gfs2_holder_uninit(ghs + 1);
 gfs2_holder_uninit(ghs);
 return error;
}
