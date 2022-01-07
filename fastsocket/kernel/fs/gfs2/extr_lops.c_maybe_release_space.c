
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ar_discard; } ;
struct gfs2_sbd {TYPE_2__ sd_args; } ;
struct gfs2_rgrpd {int rd_free; int rd_extfail_pt; int rd_free_clone; int rd_data0; struct gfs2_bitmap* rd_bits; } ;
struct TYPE_4__ {unsigned int ln_number; } ;
struct gfs2_glock {TYPE_1__ gl_name; struct gfs2_rgrpd* gl_object; struct gfs2_sbd* gl_sbd; } ;
struct gfs2_bufdata {TYPE_3__* bd_bh; struct gfs2_glock* bd_gl; } ;
struct gfs2_bitmap {scalar_t__ bi_clone; scalar_t__ bi_offset; int bi_flags; int bi_len; } ;
struct TYPE_6__ {unsigned int b_blocknr; scalar_t__ b_data; } ;


 int GBF_FULL ;
 int clear_bit (int ,int *) ;
 int gfs2_rgrp_send_discards (struct gfs2_sbd*,int ,TYPE_3__*,struct gfs2_bitmap*,int,int *) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void maybe_release_space(struct gfs2_bufdata *bd)
{
 struct gfs2_glock *gl = bd->bd_gl;
 struct gfs2_sbd *sdp = gl->gl_sbd;
 struct gfs2_rgrpd *rgd = gl->gl_object;
 unsigned int index = bd->bd_bh->b_blocknr - gl->gl_name.ln_number;
 struct gfs2_bitmap *bi = rgd->rd_bits + index;

 if (bi->bi_clone == 0)
  return;
 if (sdp->sd_args.ar_discard)
  gfs2_rgrp_send_discards(sdp, rgd->rd_data0, bd->bd_bh, bi, 1, ((void*)0));
 memcpy(bi->bi_clone + bi->bi_offset,
        bd->bd_bh->b_data + bi->bi_offset, bi->bi_len);
 clear_bit(GBF_FULL, &bi->bi_flags);
 rgd->rd_free_clone = rgd->rd_free;
 rgd->rd_extfail_pt = rgd->rd_free;
}
