
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct file {int dummy; } ;


 int EBADF ;
 struct file* fget_light (int,int*) ;
 int fput_light (struct file*,int) ;
 struct socket* sock_from_file (struct file*,int*) ;

__attribute__((used)) static struct socket *sockfd_lookup_light(int fd, int *err, int *fput_needed)
{
 struct file *file;
 struct socket *sock;

 *err = -EBADF;
 file = fget_light(fd, fput_needed);
 if (file) {
  sock = sock_from_file(file, err);
  if (sock)
   return sock;
  fput_light(file, *fput_needed);
 }
 return ((void*)0);
}
