
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int page; } ;


 int get_page (int ) ;

__attribute__((used)) static void sock_pipe_buf_get(struct pipe_inode_info *pipe,
    struct pipe_buffer *buf)
{
 get_page(buf->page);
}
