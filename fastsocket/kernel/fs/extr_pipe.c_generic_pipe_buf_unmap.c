
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int flags; int page; } ;


 int KM_USER0 ;
 int PIPE_BUF_FLAG_ATOMIC ;
 int kunmap (int ) ;
 int kunmap_atomic (void*,int ) ;

void generic_pipe_buf_unmap(struct pipe_inode_info *pipe,
       struct pipe_buffer *buf, void *map_data)
{
 if (buf->flags & PIPE_BUF_FLAG_ATOMIC) {
  buf->flags &= ~PIPE_BUF_FLAG_ATOMIC;
  kunmap_atomic(map_data, KM_USER0);
 } else
  kunmap(buf->page);
}
