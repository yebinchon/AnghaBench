
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {int sd_quota_inode; } ;
struct gfs2_quota_lvb {int qb_value; int qb_warn; int qb_limit; scalar_t__ __pad; int qb_magic; } ;
struct gfs2_quota_data {struct gfs2_quota_lvb qd_qb; TYPE_1__* qd_gl; } ;
struct gfs2_quota {int qu_value; int qu_warn; int qu_limit; } ;
struct gfs2_inode {int dummy; } ;
typedef int q ;
typedef int loff_t ;
struct TYPE_2__ {scalar_t__ gl_lvb; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int GFS2_MAGIC ;
 int cpu_to_be32 (int ) ;
 int gfs2_internal_read (struct gfs2_inode*,int *,char*,int *,int) ;
 int memset (struct gfs2_quota*,int ,int) ;
 int qd2offset (struct gfs2_quota_data*) ;

__attribute__((used)) static int update_qd(struct gfs2_sbd *sdp, struct gfs2_quota_data *qd)
{
 struct gfs2_inode *ip = GFS2_I(sdp->sd_quota_inode);
 struct gfs2_quota q;
 struct gfs2_quota_lvb *qlvb;
 loff_t pos;
 int error;

 memset(&q, 0, sizeof(struct gfs2_quota));
 pos = qd2offset(qd);
 error = gfs2_internal_read(ip, ((void*)0), (char *)&q, &pos, sizeof(q));
 if (error < 0)
  return error;

 qlvb = (struct gfs2_quota_lvb *)qd->qd_gl->gl_lvb;
 qlvb->qb_magic = cpu_to_be32(GFS2_MAGIC);
 qlvb->__pad = 0;
 qlvb->qb_limit = q.qu_limit;
 qlvb->qb_warn = q.qu_warn;
 qlvb->qb_value = q.qu_value;
 qd->qd_qb = *qlvb;

 return 0;
}
