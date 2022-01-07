
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nblocks; } ;
struct nilfs_segment_buffer {TYPE_1__ sb_sum; int sb_payload_buffers; } ;
struct buffer_head {int b_assoc_buffers; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void
nilfs_segbuf_add_payload_buffer(struct nilfs_segment_buffer *segbuf,
    struct buffer_head *bh)
{
 list_add_tail(&bh->b_assoc_buffers, &segbuf->sb_payload_buffers);
 segbuf->sb_sum.nblocks++;
}
