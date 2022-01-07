
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_rgrpd {scalar_t__ rd_reserved; int rd_extfail_pt; int rd_rstree; } ;
struct TYPE_4__ {TYPE_1__* bi; struct gfs2_rgrpd* rgd; } ;
struct gfs2_blkreserv {scalar_t__ rs_free; TYPE_2__ rs_rbm; int rs_node; } ;
struct TYPE_3__ {int bi_flags; } ;


 int BUG_ON (int) ;
 int GBF_FULL ;
 int TRACE_RS_TREEDEL ;
 int clear_bit (int ,int *) ;
 int gfs2_rs_active (struct gfs2_blkreserv*) ;
 int rb_erase (int *,int *) ;
 int rb_init_node (int *) ;
 int smp_mb__after_clear_bit () ;
 int trace_gfs2_rs (struct gfs2_blkreserv*,int ) ;

__attribute__((used)) static void __rs_deltree(struct gfs2_blkreserv *rs)
{
 struct gfs2_rgrpd *rgd;

 if (!gfs2_rs_active(rs))
  return;

 rgd = rs->rs_rbm.rgd;
 trace_gfs2_rs(rs, TRACE_RS_TREEDEL);
 rb_erase(&rs->rs_node, &rgd->rd_rstree);
 rb_init_node(&rs->rs_node);

 if (rs->rs_free) {

  BUG_ON(rs->rs_rbm.rgd->rd_reserved < rs->rs_free);
  rs->rs_rbm.rgd->rd_reserved -= rs->rs_free;




  rgd->rd_extfail_pt += rs->rs_free;
  rs->rs_free = 0;
  clear_bit(GBF_FULL, &rs->rs_rbm.bi->bi_flags);
  smp_mb__after_clear_bit();
 }
}
