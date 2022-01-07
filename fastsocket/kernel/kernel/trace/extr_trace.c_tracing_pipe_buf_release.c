
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int page; } ;


 int __free_page (int ) ;

__attribute__((used)) static void tracing_pipe_buf_release(struct pipe_inode_info *pipe,
         struct pipe_buffer *buf)
{
 __free_page(buf->page);
}
