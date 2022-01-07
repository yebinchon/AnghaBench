
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_inode {struct gfs2_blkreserv* i_res; } ;
struct TYPE_2__ {scalar_t__ gh_gl; } ;
struct gfs2_blkreserv {TYPE_1__ rs_rgd_gh; } ;


 int gfs2_glock_dq_uninit (TYPE_1__*) ;

void gfs2_inplace_release(struct gfs2_inode *ip)
{
 struct gfs2_blkreserv *rs = ip->i_res;

 if (rs->rs_rgd_gh.gh_gl)
  gfs2_glock_dq_uninit(&rs->rs_rgd_gh);
}
