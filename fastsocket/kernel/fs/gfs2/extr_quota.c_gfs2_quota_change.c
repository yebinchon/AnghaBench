
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct gfs2_quota_data {scalar_t__ qd_id; int qd_flags; } ;
struct gfs2_inode {int i_diskflags; TYPE_1__* i_res; int i_inode; } ;
typedef int s64 ;
struct TYPE_2__ {unsigned int rs_qa_qd_num; struct gfs2_quota_data** rs_qa_qd; } ;


 int GFS2_DIF_SYSTEM ;
 int GFS2_SB (int *) ;
 int QDF_USER ;
 int do_qc (struct gfs2_quota_data*,int ) ;
 scalar_t__ gfs2_assert_warn (int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

void gfs2_quota_change(struct gfs2_inode *ip, s64 change,
         u32 uid, u32 gid)
{
 struct gfs2_quota_data *qd;
 unsigned int x;

 if (gfs2_assert_warn(GFS2_SB(&ip->i_inode), change))
  return;
 if (ip->i_diskflags & GFS2_DIF_SYSTEM)
  return;

 for (x = 0; x < ip->i_res->rs_qa_qd_num; x++) {
  qd = ip->i_res->rs_qa_qd[x];

  if ((qd->qd_id == uid && test_bit(QDF_USER, &qd->qd_flags)) ||
      (qd->qd_id == gid && !test_bit(QDF_USER, &qd->qd_flags))) {
   do_qc(qd, change);
  }
 }
}
