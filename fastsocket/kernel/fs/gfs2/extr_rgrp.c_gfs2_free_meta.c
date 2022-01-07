
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {int i_gid; int i_uid; } ;
struct gfs2_inode {TYPE_1__ i_inode; } ;
typedef int s64 ;


 struct gfs2_sbd* GFS2_SB (TYPE_1__*) ;
 int __gfs2_free_blocks (struct gfs2_inode*,int ,scalar_t__,int) ;
 int gfs2_quota_change (struct gfs2_inode*,int ,int ,int ) ;
 int gfs2_statfs_change (struct gfs2_sbd*,int ,scalar_t__,int ) ;

void gfs2_free_meta(struct gfs2_inode *ip, u64 bstart, u32 blen)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);

 __gfs2_free_blocks(ip, bstart, blen, 1);
 gfs2_statfs_change(sdp, 0, +blen, 0);
 gfs2_quota_change(ip, -(s64)blen, ip->i_inode.i_uid, ip->i_inode.i_gid);
}
