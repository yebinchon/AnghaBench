
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_seg_seq; scalar_t__ ns_pseg_offset; int ns_nextnum; int ns_segnum; } ;



__attribute__((used)) static inline void nilfs_shift_to_next_segment(struct the_nilfs *nilfs)
{

 nilfs->ns_segnum = nilfs->ns_nextnum;
 nilfs->ns_pseg_offset = 0;
 nilfs->ns_seg_seq++;
}
