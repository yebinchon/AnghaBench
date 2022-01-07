
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct file {int dummy; } ;


 int EBADF ;
 struct file* fget (int) ;
 int fput (struct file*) ;
 struct socket* sock_from_file (struct file*,int*) ;

struct socket *sockfd_lookup(int fd, int *err)
{
 struct file *file;
 struct socket *sock;

 file = fget(fd);
 if (!file) {
  *err = -EBADF;
  return ((void*)0);
 }

 sock = sock_from_file(file, err);
 if (!sock)
  fput(file);
 return sock;
}
