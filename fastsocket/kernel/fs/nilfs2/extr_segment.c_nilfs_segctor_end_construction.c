
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_sufile; } ;
struct TYPE_2__ {int flags; } ;
struct nilfs_sc_info {int sc_nfreesegs; int sc_freesegs; TYPE_1__ sc_stage; } ;


 int NILFS_CF_SUFREED ;
 int WARN_ON (int) ;
 int nilfs_segctor_clear_segment_buffers (struct nilfs_sc_info*) ;
 int nilfs_segctor_free_incomplete_segments (struct nilfs_sc_info*,struct the_nilfs*) ;
 int nilfs_sufile_cancel_freev (int ,int ,int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void nilfs_segctor_end_construction(struct nilfs_sc_info *sci,
        struct the_nilfs *nilfs, int err)
{
 if (unlikely(err)) {
  nilfs_segctor_free_incomplete_segments(sci, nilfs);
  if (sci->sc_stage.flags & NILFS_CF_SUFREED) {
   int ret;

   ret = nilfs_sufile_cancel_freev(nilfs->ns_sufile,
       sci->sc_freesegs,
       sci->sc_nfreesegs,
       ((void*)0));
   WARN_ON(ret);
  }
 }
 nilfs_segctor_clear_segment_buffers(sci);
}
