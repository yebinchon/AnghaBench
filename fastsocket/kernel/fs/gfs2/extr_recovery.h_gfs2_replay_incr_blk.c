
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {TYPE_1__* sd_jdesc; } ;
struct TYPE_2__ {unsigned int jd_blocks; } ;



__attribute__((used)) static inline void gfs2_replay_incr_blk(struct gfs2_sbd *sdp, unsigned int *blk)
{
 if (++*blk == sdp->sd_jdesc->jd_blocks)
         *blk = 0;
}
