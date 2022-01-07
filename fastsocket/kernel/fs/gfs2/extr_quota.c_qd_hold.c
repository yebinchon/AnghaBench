
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {int dummy; } ;
struct gfs2_quota_data {int qd_count; TYPE_1__* qd_gl; } ;
struct TYPE_2__ {struct gfs2_sbd* gl_sbd; } ;


 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int gfs2_assert (struct gfs2_sbd*,int ) ;

__attribute__((used)) static void qd_hold(struct gfs2_quota_data *qd)
{
 struct gfs2_sbd *sdp = qd->qd_gl->gl_sbd;
 gfs2_assert(sdp, atomic_read(&qd->qd_count));
 atomic_inc(&qd->qd_count);
}
