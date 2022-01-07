
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_quota_data {int dummy; } ;


 int bh_put (struct gfs2_quota_data*) ;
 int qd_put (struct gfs2_quota_data*) ;
 int slot_put (struct gfs2_quota_data*) ;

__attribute__((used)) static void qdsb_put(struct gfs2_quota_data *qd)
{
 bh_put(qd);
 slot_put(qd);
 qd_put(qd);
}
