
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int flags; int page; } ;


 int PIPE_BUF_FLAG_LRU ;
 int page_cache_release (int ) ;

__attribute__((used)) static void page_cache_pipe_buf_release(struct pipe_inode_info *pipe,
     struct pipe_buffer *buf)
{
 page_cache_release(buf->page);
 buf->flags &= ~PIPE_BUF_FLAG_LRU;
}
