
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct file {int dummy; } ;


 int fd_install (int,struct file*) ;
 scalar_t__ likely (int) ;
 int sock_alloc_file (struct socket*,struct file**,int) ;

int sock_map_fd(struct socket *sock, int flags)
{
 struct file *newfile;
 int fd = sock_alloc_file(sock, &newfile, flags);

 if (likely(fd >= 0))
  fd_install(fd, newfile);

 return fd;
}
