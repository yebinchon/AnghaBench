
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_quota_data {int dummy; } ;
struct gfs2_inode {TYPE_1__* i_res; int i_flags; } ;
struct TYPE_2__ {unsigned int rs_qa_qd_num; int * rs_qa_qd_ghs; struct gfs2_quota_data** rs_qa_qd; } ;


 int GIF_QD_LOCKED ;
 int do_sync (unsigned int,struct gfs2_quota_data**) ;
 int gfs2_glock_dq_uninit (int *) ;
 int gfs2_quota_unhold (struct gfs2_inode*) ;
 int need_sync (struct gfs2_quota_data*) ;
 scalar_t__ qd_trylock (struct gfs2_quota_data*) ;
 int qd_unlock (struct gfs2_quota_data*) ;
 int test_and_clear_bit (int ,int *) ;

void gfs2_quota_unlock(struct gfs2_inode *ip)
{
 struct gfs2_quota_data *qda[4];
 unsigned int count = 0;
 unsigned int x;

 if (!test_and_clear_bit(GIF_QD_LOCKED, &ip->i_flags))
  goto out;

 for (x = 0; x < ip->i_res->rs_qa_qd_num; x++) {
  struct gfs2_quota_data *qd;
  int sync;

  qd = ip->i_res->rs_qa_qd[x];
  sync = need_sync(qd);

  gfs2_glock_dq_uninit(&ip->i_res->rs_qa_qd_ghs[x]);

  if (sync && qd_trylock(qd))
   qda[count++] = qd;
 }

 if (count) {
  do_sync(count, qda);
  for (x = 0; x < count; x++)
   qd_unlock(qda[x]);
 }

out:
 gfs2_quota_unhold(ip);
}
