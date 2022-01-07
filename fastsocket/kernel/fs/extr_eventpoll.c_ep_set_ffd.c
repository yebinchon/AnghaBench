
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct epoll_filefd {int fd; scalar_t__ added; struct file* file; } ;



__attribute__((used)) static inline void ep_set_ffd(struct epoll_filefd *ffd,
         struct file *file, int fd)
{
 ffd->file = file;
 ffd->fd = fd;
 ffd->added = 0;
}
