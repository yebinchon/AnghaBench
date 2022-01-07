
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {int sd_quota_mutex; int sd_qc_inode; } ;
struct gfs2_quota_data {int qd_flags; scalar_t__ qd_change; int qd_id; int qd_bh; struct gfs2_quota_change* qd_bh_qc; TYPE_1__* qd_gl; } ;
struct gfs2_quota_change {void* qc_id; void* qc_flags; scalar_t__ qc_change; } ;
struct gfs2_inode {int i_gl; } ;
typedef scalar_t__ s64 ;
struct TYPE_2__ {struct gfs2_sbd* gl_sbd; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int GFS2_QCF_USER ;
 int QDF_CHANGE ;
 int QDF_USER ;
 scalar_t__ be64_to_cpu (scalar_t__) ;
 int clear_bit (int ,int *) ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ cpu_to_be64 (scalar_t__) ;
 int gfs2_assert_warn (struct gfs2_sbd*,scalar_t__) ;
 int gfs2_trans_add_meta (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qd_hold (struct gfs2_quota_data*) ;
 int qd_lru_lock ;
 int qd_put (struct gfs2_quota_data*) ;
 int slot_hold (struct gfs2_quota_data*) ;
 int slot_put (struct gfs2_quota_data*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void do_qc(struct gfs2_quota_data *qd, s64 change)
{
 struct gfs2_sbd *sdp = qd->qd_gl->gl_sbd;
 struct gfs2_inode *ip = GFS2_I(sdp->sd_qc_inode);
 struct gfs2_quota_change *qc = qd->qd_bh_qc;
 s64 x;

 mutex_lock(&sdp->sd_quota_mutex);
 gfs2_trans_add_meta(ip->i_gl, qd->qd_bh);

 if (!test_bit(QDF_CHANGE, &qd->qd_flags)) {
  qc->qc_change = 0;
  qc->qc_flags = 0;
  if (test_bit(QDF_USER, &qd->qd_flags))
   qc->qc_flags = cpu_to_be32(GFS2_QCF_USER);
  qc->qc_id = cpu_to_be32(qd->qd_id);
 }

 x = be64_to_cpu(qc->qc_change) + change;
 qc->qc_change = cpu_to_be64(x);

 spin_lock(&qd_lru_lock);
 qd->qd_change = x;
 spin_unlock(&qd_lru_lock);

 if (!x) {
  gfs2_assert_warn(sdp, test_bit(QDF_CHANGE, &qd->qd_flags));
  clear_bit(QDF_CHANGE, &qd->qd_flags);
  qc->qc_flags = 0;
  qc->qc_id = 0;
  slot_put(qd);
  qd_put(qd);
 } else if (!test_and_set_bit(QDF_CHANGE, &qd->qd_flags)) {
  qd_hold(qd);
  slot_hold(qd);
 }

 mutex_unlock(&sdp->sd_quota_mutex);
}
