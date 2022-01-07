
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct TYPE_4__ {int i_gid; int i_uid; } ;
struct gfs2_inode {TYPE_2__ i_inode; } ;


 scalar_t__ GFS2_QUOTA_OFF ;
 scalar_t__ GFS2_QUOTA_ON ;
 struct gfs2_sbd* GFS2_SB (TYPE_2__*) ;
 int NO_QUOTA_CHANGE ;
 int gfs2_quota_check (struct gfs2_inode*,int ,int ) ;
 int gfs2_quota_lock (struct gfs2_inode*,int ,int ) ;
 int gfs2_quota_unlock (struct gfs2_inode*) ;

__attribute__((used)) static inline int gfs2_quota_lock_check(struct gfs2_inode *ip)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 int ret;
 if (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF)
  return 0;
 ret = gfs2_quota_lock(ip, NO_QUOTA_CHANGE, NO_QUOTA_CHANGE);
 if (ret)
  return ret;
 if (sdp->sd_args.ar_quota != GFS2_QUOTA_ON)
  return 0;
 ret = gfs2_quota_check(ip, ip->i_inode.i_uid, ip->i_inode.i_gid);
 if (ret)
  gfs2_quota_unlock(ip);
 return ret;
}
