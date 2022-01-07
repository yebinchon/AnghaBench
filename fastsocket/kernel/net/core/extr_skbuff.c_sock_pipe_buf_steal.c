
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int dummy; } ;



__attribute__((used)) static int sock_pipe_buf_steal(struct pipe_inode_info *pipe,
          struct pipe_buffer *buf)
{
 return 1;
}
