
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_rgrpd {int rd_length; struct gfs2_bitmap* rd_bits; } ;
struct gfs2_holder {TYPE_1__* gh_gl; } ;
struct gfs2_bitmap {int * bi_bh; } ;
struct TYPE_2__ {struct gfs2_rgrpd* gl_object; } ;


 int brelse (int *) ;

void gfs2_rgrp_go_unlock(struct gfs2_holder *gh)
{
 struct gfs2_rgrpd *rgd = gh->gh_gl->gl_object;
 int x, length = rgd->rd_length;

 for (x = 0; x < length; x++) {
  struct gfs2_bitmap *bi = rgd->rd_bits + x;
  if (bi->bi_bh) {
   brelse(bi->bi_bh);
   bi->bi_bh = ((void*)0);
  }
 }

}
