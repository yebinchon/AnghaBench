
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_rgrpd {int rd_rsspin; } ;
struct TYPE_2__ {struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {TYPE_1__ rs_rbm; } ;


 int __rs_deltree (struct gfs2_blkreserv*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void gfs2_rs_deltree(struct gfs2_blkreserv *rs)
{
 struct gfs2_rgrpd *rgd;

 rgd = rs->rs_rbm.rgd;
 if (rgd) {
  spin_lock(&rgd->rd_rsspin);
  __rs_deltree(rs);
  spin_unlock(&rgd->rd_rsspin);
 }
}
