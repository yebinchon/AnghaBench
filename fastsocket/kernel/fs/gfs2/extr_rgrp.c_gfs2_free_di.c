
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_rgrpd {int dummy; } ;
struct TYPE_2__ {int i_gid; int i_uid; } ;
struct gfs2_inode {int i_no_addr; TYPE_1__ i_inode; } ;


 int GFS2_BLKST_FREE ;
 int gfs2_free_uninit_di (struct gfs2_rgrpd*,int ) ;
 int gfs2_meta_wipe (struct gfs2_inode*,int ,int) ;
 int gfs2_quota_change (struct gfs2_inode*,int,int ,int ) ;
 int trace_gfs2_block_alloc (struct gfs2_inode*,struct gfs2_rgrpd*,int ,int,int ) ;

void gfs2_free_di(struct gfs2_rgrpd *rgd, struct gfs2_inode *ip)
{
 gfs2_free_uninit_di(rgd, ip->i_no_addr);
 trace_gfs2_block_alloc(ip, rgd, ip->i_no_addr, 1, GFS2_BLKST_FREE);
 gfs2_quota_change(ip, -1, ip->i_inode.i_uid, ip->i_inode.i_gid);
 gfs2_meta_wipe(ip, ip->i_no_addr, 1);
}
