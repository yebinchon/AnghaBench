
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_ctime; int ns_seg_seq; scalar_t__ ns_pseg_offset; int ns_nextnum; int ns_segnum; } ;
struct TYPE_2__ {int ctime; int seg_seq; scalar_t__ nblocks; } ;
struct nilfs_segment_buffer {TYPE_1__ sb_sum; scalar_t__ sb_fseg_start; scalar_t__ sb_pseg_start; int sb_nextnum; int sb_segnum; } ;



__attribute__((used)) static void nilfs_set_next_segment(struct the_nilfs *nilfs,
       struct nilfs_segment_buffer *segbuf)
{
 nilfs->ns_segnum = segbuf->sb_segnum;
 nilfs->ns_nextnum = segbuf->sb_nextnum;
 nilfs->ns_pseg_offset = segbuf->sb_pseg_start - segbuf->sb_fseg_start
  + segbuf->sb_sum.nblocks;
 nilfs->ns_seg_seq = segbuf->sb_sum.seg_seq;
 nilfs->ns_ctime = segbuf->sb_sum.ctime;
}
