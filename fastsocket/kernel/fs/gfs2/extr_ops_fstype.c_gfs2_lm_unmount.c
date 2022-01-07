
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm_lockops {int (* lm_unmount ) (struct gfs2_sbd*) ;} ;
struct TYPE_2__ {struct lm_lockops* ls_ops; } ;
struct gfs2_sbd {int sd_flags; TYPE_1__ sd_lockstruct; } ;


 int SDF_SHUTDOWN ;
 scalar_t__ likely (int) ;
 int stub1 (struct gfs2_sbd*) ;
 int test_bit (int ,int *) ;

void gfs2_lm_unmount(struct gfs2_sbd *sdp)
{
 const struct lm_lockops *lm = sdp->sd_lockstruct.ls_ops;
 if (likely(!test_bit(SDF_SHUTDOWN, &sdp->sd_flags)) &&
     lm->lm_unmount)
  lm->lm_unmount(sdp);
}
