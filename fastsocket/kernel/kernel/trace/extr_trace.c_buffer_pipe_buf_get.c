
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {scalar_t__ private; } ;
struct buffer_ref {int ref; } ;



__attribute__((used)) static void buffer_pipe_buf_get(struct pipe_inode_info *pipe,
    struct pipe_buffer *buf)
{
 struct buffer_ref *ref = (struct buffer_ref *)buf->private;

 ref->ref++;
}
