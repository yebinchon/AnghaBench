
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_rgrpd {int rd_length; struct gfs2_bitmap* rd_bits; } ;
struct gfs2_bitmap {int * bi_clone; } ;


 int kfree (int *) ;

void gfs2_free_clones(struct gfs2_rgrpd *rgd)
{
 int x;

 for (x = 0; x < rgd->rd_length; x++) {
  struct gfs2_bitmap *bi = rgd->rd_bits + x;
  kfree(bi->bi_clone);
  bi->bi_clone = ((void*)0);
 }
}
