
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int dummy; } ;



int generic_pipe_buf_confirm(struct pipe_inode_info *info,
        struct pipe_buffer *buf)
{
 return 0;
}
