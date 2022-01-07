
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {scalar_t__ ar_quota; } ;
struct gfs2_sbd {TYPE_4__* sd_vfs; TYPE_1__ sd_args; } ;
struct TYPE_7__ {int qb_warn; int qb_limit; int qb_value; } ;
struct gfs2_quota_data {scalar_t__ qd_id; scalar_t__ qd_change; scalar_t__ qd_last_warn; int qd_flags; TYPE_3__ qd_qb; } ;
struct gfs2_inode {TYPE_2__* i_res; int i_flags; int i_inode; } ;
typedef scalar_t__ s64 ;
struct TYPE_8__ {int s_dev; } ;
struct TYPE_6__ {unsigned int rs_qa_qd_num; struct gfs2_quota_data** rs_qa_qd; } ;


 int EDQUOT ;
 scalar_t__ GFS2_QUOTA_ON ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int GIF_QD_LOCKED ;
 int GRPQUOTA ;
 int HZ ;
 int QDF_USER ;
 int QUOTA_NL_BHARDWARN ;
 int QUOTA_NL_BSOFTWARN ;
 int USRQUOTA ;
 scalar_t__ be64_to_cpu (int ) ;
 int gfs2_tune_get (struct gfs2_sbd*,int ) ;
 int gt_quota_warn_period ;
 scalar_t__ jiffies ;
 int print_message (struct gfs2_quota_data*,char*) ;
 int qd_lru_lock ;
 int quota_send_warning (int ,scalar_t__,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after_eq (scalar_t__,scalar_t__) ;

int gfs2_quota_check(struct gfs2_inode *ip, u32 uid, u32 gid)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_quota_data *qd;
 s64 value;
 unsigned int x;
 int error = 0;

 if (!test_bit(GIF_QD_LOCKED, &ip->i_flags))
  return 0;

        if (sdp->sd_args.ar_quota != GFS2_QUOTA_ON)
                return 0;

 for (x = 0; x < ip->i_res->rs_qa_qd_num; x++) {
  qd = ip->i_res->rs_qa_qd[x];

  if (!((qd->qd_id == uid && test_bit(QDF_USER, &qd->qd_flags)) ||
        (qd->qd_id == gid && !test_bit(QDF_USER, &qd->qd_flags))))
   continue;

  value = (s64)be64_to_cpu(qd->qd_qb.qb_value);
  spin_lock(&qd_lru_lock);
  value += qd->qd_change;
  spin_unlock(&qd_lru_lock);

  if (be64_to_cpu(qd->qd_qb.qb_limit) && (s64)be64_to_cpu(qd->qd_qb.qb_limit) < value) {
   print_message(qd, "exceeded");
   quota_send_warning(test_bit(QDF_USER, &qd->qd_flags) ?
        USRQUOTA : GRPQUOTA, qd->qd_id,
        sdp->sd_vfs->s_dev, QUOTA_NL_BHARDWARN);

   error = -EDQUOT;
   break;
  } else if (be64_to_cpu(qd->qd_qb.qb_warn) &&
      (s64)be64_to_cpu(qd->qd_qb.qb_warn) < value &&
      time_after_eq(jiffies, qd->qd_last_warn +
      gfs2_tune_get(sdp,
      gt_quota_warn_period) * HZ)) {
   quota_send_warning(test_bit(QDF_USER, &qd->qd_flags) ?
        USRQUOTA : GRPQUOTA, qd->qd_id,
        sdp->sd_vfs->s_dev, QUOTA_NL_BSOFTWARN);
   error = print_message(qd, "warning");
   qd->qd_last_warn = jiffies;
  }
 }

 return error;
}
