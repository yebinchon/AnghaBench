
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segment_buffer {int sb_payload_buffers; int sb_segsum_buffers; } ;


 int nilfs_release_buffers (int *) ;

__attribute__((used)) static inline void nilfs_segbuf_clear(struct nilfs_segment_buffer *segbuf)
{
 nilfs_release_buffers(&segbuf->sb_segsum_buffers);
 nilfs_release_buffers(&segbuf->sb_payload_buffers);
}
