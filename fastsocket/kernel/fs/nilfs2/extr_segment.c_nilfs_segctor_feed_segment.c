
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nilfs_sc_info {TYPE_2__* sc_curseg; int sc_segbufs; int sc_nblk_this_inc; } ;
struct TYPE_5__ {scalar_t__ nblocks; } ;
struct TYPE_6__ {TYPE_1__ sb_sum; } ;


 int E2BIG ;
 TYPE_2__* NILFS_NEXT_SEGBUF (TYPE_2__*) ;
 scalar_t__ NILFS_SEGBUF_IS_LAST (TYPE_2__*,int *) ;
 int nilfs_segctor_reset_segment_buffer (struct nilfs_sc_info*) ;

__attribute__((used)) static int nilfs_segctor_feed_segment(struct nilfs_sc_info *sci)
{
 sci->sc_nblk_this_inc += sci->sc_curseg->sb_sum.nblocks;
 if (NILFS_SEGBUF_IS_LAST(sci->sc_curseg, &sci->sc_segbufs))
  return -E2BIG;

 sci->sc_curseg = NILFS_NEXT_SEGBUF(sci->sc_curseg);
 return nilfs_segctor_reset_segment_buffer(sci);
}
