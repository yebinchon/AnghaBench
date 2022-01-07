
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct file {int f_mode; struct socket* private_data; int * f_op; } ;


 int ENOTSOCK ;
 int FMODE_FASTSOCKET ;
 int socket_file_ops ;

__attribute__((used)) static struct socket *sock_from_file(struct file *file, int *err)
{
 if (file->f_mode & FMODE_FASTSOCKET || file->f_op == &socket_file_ops)
  return file->private_data;

 *err = -ENOTSOCK;
 return ((void*)0);
}
