
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int page; int flags; } ;


 int KM_USER0 ;
 int PIPE_BUF_FLAG_ATOMIC ;
 void* kmap (int ) ;
 void* kmap_atomic (int ,int ) ;

void *generic_pipe_buf_map(struct pipe_inode_info *pipe,
      struct pipe_buffer *buf, int atomic)
{
 if (atomic) {
  buf->flags |= PIPE_BUF_FLAG_ATOMIC;
  return kmap_atomic(buf->page, KM_USER0);
 }

 return kmap(buf->page);
}
