
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pipe_inode_info {scalar_t__ tmp_page; struct pipe_buffer* bufs; } ;
struct pipe_buffer {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* release ) (struct pipe_inode_info*,struct pipe_buffer*) ;} ;


 int PIPE_BUFFERS ;
 int __free_page (scalar_t__) ;
 int kfree (struct pipe_inode_info*) ;
 int stub1 (struct pipe_inode_info*,struct pipe_buffer*) ;

void __free_pipe_info(struct pipe_inode_info *pipe)
{
 int i;

 for (i = 0; i < PIPE_BUFFERS; i++) {
  struct pipe_buffer *buf = pipe->bufs + i;
  if (buf->ops)
   buf->ops->release(pipe, buf);
 }
 if (pipe->tmp_page)
  __free_page(pipe->tmp_page);
 kfree(pipe);
}
