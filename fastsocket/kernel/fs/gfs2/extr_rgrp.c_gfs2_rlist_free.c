
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_rgrp_list {unsigned int rl_rgrps; int * rl_ghs; int * rl_rgd; } ;


 int gfs2_holder_uninit (int *) ;
 int kfree (int *) ;

void gfs2_rlist_free(struct gfs2_rgrp_list *rlist)
{
 unsigned int x;

 kfree(rlist->rl_rgd);

 if (rlist->rl_ghs) {
  for (x = 0; x < rlist->rl_rgrps; x++)
   gfs2_holder_uninit(&rlist->rl_ghs[x]);
  kfree(rlist->rl_ghs);
 }
}
