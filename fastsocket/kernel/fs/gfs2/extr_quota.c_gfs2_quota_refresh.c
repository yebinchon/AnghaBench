
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_quota_data {int dummy; } ;
struct gfs2_holder {int dummy; } ;


 int FORCE ;
 int do_glock (struct gfs2_quota_data*,int ,struct gfs2_holder*) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int qd_get (struct gfs2_sbd*,int,int ,struct gfs2_quota_data**) ;
 int qd_put (struct gfs2_quota_data*) ;

int gfs2_quota_refresh(struct gfs2_sbd *sdp, int user, u32 id)
{
 struct gfs2_quota_data *qd;
 struct gfs2_holder q_gh;
 int error;

 error = qd_get(sdp, user, id, &qd);
 if (error)
  return error;

 error = do_glock(qd, FORCE, &q_gh);
 if (!error)
  gfs2_glock_dq_uninit(&q_gh);

 qd_put(qd);
 return error;
}
