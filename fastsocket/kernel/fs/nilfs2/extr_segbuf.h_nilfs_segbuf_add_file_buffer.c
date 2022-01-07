
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nfileblk; } ;
struct nilfs_segment_buffer {TYPE_1__ sb_sum; } ;
struct buffer_head {int dummy; } ;


 int get_bh (struct buffer_head*) ;
 int nilfs_segbuf_add_payload_buffer (struct nilfs_segment_buffer*,struct buffer_head*) ;

__attribute__((used)) static inline void
nilfs_segbuf_add_file_buffer(struct nilfs_segment_buffer *segbuf,
        struct buffer_head *bh)
{
 get_bh(bh);
 nilfs_segbuf_add_payload_buffer(segbuf, bh);
 segbuf->sb_sum.nfileblk++;
}
