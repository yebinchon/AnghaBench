
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_1__ sd_args; } ;
struct gfs2_quota_data {int dummy; } ;
struct TYPE_6__ {scalar_t__ i_uid; scalar_t__ i_gid; } ;
struct gfs2_inode {TYPE_2__* i_res; TYPE_3__ i_inode; int i_flags; } ;
struct TYPE_5__ {int rs_qa_qd_num; struct gfs2_quota_data** rs_qa_qd; } ;


 int EIO ;
 scalar_t__ GFS2_QUOTA_OFF ;
 struct gfs2_sbd* GFS2_SB (TYPE_3__*) ;
 int GIF_QD_LOCKED ;
 scalar_t__ NO_QUOTA_CHANGE ;
 int QUOTA_GROUP ;
 int QUOTA_USER ;
 scalar_t__ gfs2_assert_warn (struct gfs2_sbd*,int) ;
 int gfs2_quota_unhold (struct gfs2_inode*) ;
 int gfs2_rs_alloc (struct gfs2_inode*) ;
 int qdsb_get (struct gfs2_sbd*,int ,scalar_t__,struct gfs2_quota_data**) ;
 int test_bit (int ,int *) ;

int gfs2_quota_hold(struct gfs2_inode *ip, u32 uid, u32 gid)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_quota_data **qd;
 int error;

 if (ip->i_res == ((void*)0))
  gfs2_rs_alloc(ip);

 qd = ip->i_res->rs_qa_qd;

 if (gfs2_assert_warn(sdp, !ip->i_res->rs_qa_qd_num) ||
     gfs2_assert_warn(sdp, !test_bit(GIF_QD_LOCKED, &ip->i_flags)))
  return -EIO;

 if (sdp->sd_args.ar_quota == GFS2_QUOTA_OFF)
  return 0;

 error = qdsb_get(sdp, QUOTA_USER, ip->i_inode.i_uid, qd);
 if (error)
  goto out;
 ip->i_res->rs_qa_qd_num++;
 qd++;

 error = qdsb_get(sdp, QUOTA_GROUP, ip->i_inode.i_gid, qd);
 if (error)
  goto out;
 ip->i_res->rs_qa_qd_num++;
 qd++;

 if (uid != NO_QUOTA_CHANGE && uid != ip->i_inode.i_uid) {
  error = qdsb_get(sdp, QUOTA_USER, uid, qd);
  if (error)
   goto out;
  ip->i_res->rs_qa_qd_num++;
  qd++;
 }

 if (gid != NO_QUOTA_CHANGE && gid != ip->i_inode.i_gid) {
  error = qdsb_get(sdp, QUOTA_GROUP, gid, qd);
  if (error)
   goto out;
  ip->i_res->rs_qa_qd_num++;
  qd++;
 }

out:
 if (error)
  gfs2_quota_unhold(ip);
 return error;
}
