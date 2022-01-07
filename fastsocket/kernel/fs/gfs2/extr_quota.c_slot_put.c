
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {int sd_quota_bitmap; } ;
struct gfs2_quota_data {int qd_slot; int qd_slot_count; TYPE_1__* qd_gl; } ;
struct TYPE_2__ {struct gfs2_sbd* gl_sbd; } ;


 int gfs2_assert (struct gfs2_sbd*,int ) ;
 int gfs2_icbit_munge (struct gfs2_sbd*,int ,int,int ) ;
 int qd_lru_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void slot_put(struct gfs2_quota_data *qd)
{
 struct gfs2_sbd *sdp = qd->qd_gl->gl_sbd;

 spin_lock(&qd_lru_lock);
 gfs2_assert(sdp, qd->qd_slot_count);
 if (!--qd->qd_slot_count) {
  gfs2_icbit_munge(sdp, sdp->sd_quota_bitmap, qd->qd_slot, 0);
  qd->qd_slot = -1;
 }
 spin_unlock(&qd_lru_lock);
}
