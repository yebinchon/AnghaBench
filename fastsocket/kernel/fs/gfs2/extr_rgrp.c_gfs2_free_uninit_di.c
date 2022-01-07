
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {TYPE_1__* rd_bits; int rd_gl; int rd_free; int rd_dinodes; struct gfs2_sbd* rd_sbd; } ;
struct TYPE_4__ {int b_data; } ;
struct TYPE_3__ {TYPE_2__* bi_bh; } ;


 int GFS2_BLKST_FREE ;
 int gfs2_assert_withdraw (struct gfs2_sbd*,int) ;
 int gfs2_consist_rgrpd (struct gfs2_rgrpd*) ;
 int gfs2_rgrp_out (struct gfs2_rgrpd*,int ) ;
 int gfs2_statfs_change (struct gfs2_sbd*,int ,int,int) ;
 int gfs2_trans_add_meta (int ,TYPE_2__*) ;
 struct gfs2_rgrpd* rgblk_free (struct gfs2_sbd*,int ,int,int ) ;

__attribute__((used)) static void gfs2_free_uninit_di(struct gfs2_rgrpd *rgd, u64 blkno)
{
 struct gfs2_sbd *sdp = rgd->rd_sbd;
 struct gfs2_rgrpd *tmp_rgd;

 tmp_rgd = rgblk_free(sdp, blkno, 1, GFS2_BLKST_FREE);
 if (!tmp_rgd)
  return;
 gfs2_assert_withdraw(sdp, rgd == tmp_rgd);

 if (!rgd->rd_dinodes)
  gfs2_consist_rgrpd(rgd);
 rgd->rd_dinodes--;
 rgd->rd_free++;

 gfs2_trans_add_meta(rgd->rd_gl, rgd->rd_bits[0].bi_bh);
 gfs2_rgrp_out(rgd, rgd->rd_bits[0].bi_bh->b_data);

 gfs2_statfs_change(sdp, 0, +1, -1);
}
