
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_sbd {int sd_quota_list; TYPE_2__* sd_vfs; } ;
struct gfs2_quota_data {int qd_flags; int qd_change_sync; int qd_slot_count; int qd_change; int qd_count; int qd_list; TYPE_1__* qd_gl; } ;
struct TYPE_4__ {int s_flags; } ;
struct TYPE_3__ {struct gfs2_sbd* gl_sbd; } ;


 int MS_RDONLY ;
 int QDF_CHANGE ;
 int QDF_LOCKED ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 scalar_t__ bh_get (struct gfs2_quota_data*) ;
 int clear_bit (int ,int *) ;
 int gfs2_assert_warn (struct gfs2_sbd*,int ) ;
 int list_move_tail (int *,int *) ;
 int qd_lru_lock ;
 int qd_put (struct gfs2_quota_data*) ;
 int set_bit (int ,int *) ;
 int slot_put (struct gfs2_quota_data*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int qd_trylock(struct gfs2_quota_data *qd)
{
 struct gfs2_sbd *sdp = qd->qd_gl->gl_sbd;

 if (sdp->sd_vfs->s_flags & MS_RDONLY)
  return 0;

 spin_lock(&qd_lru_lock);

 if (test_bit(QDF_LOCKED, &qd->qd_flags) ||
     !test_bit(QDF_CHANGE, &qd->qd_flags)) {
  spin_unlock(&qd_lru_lock);
  return 0;
 }

 list_move_tail(&qd->qd_list, &sdp->sd_quota_list);

 set_bit(QDF_LOCKED, &qd->qd_flags);
 gfs2_assert_warn(sdp, atomic_read(&qd->qd_count));
 atomic_inc(&qd->qd_count);
 qd->qd_change_sync = qd->qd_change;
 gfs2_assert_warn(sdp, qd->qd_slot_count);
 qd->qd_slot_count++;

 spin_unlock(&qd_lru_lock);

 gfs2_assert_warn(sdp, qd->qd_change_sync);
 if (bh_get(qd)) {
  clear_bit(QDF_LOCKED, &qd->qd_flags);
  slot_put(qd);
  qd_put(qd);
  return 0;
 }

 return 1;
}
