
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {TYPE_1__* ops; TYPE_2__* sk; } ;
struct file {struct socket* private_data; struct file* sub_file; } ;
struct TYPE_4__ {scalar_t__ sk_state; } ;
struct TYPE_3__ {int (* shutdown ) (struct socket*,int) ;} ;


 scalar_t__ TCP_LISTEN ;
 int stub1 (struct socket*,int) ;
 int stub2 (struct socket*,int) ;
 int stub3 (struct socket*,int) ;

int fsocket_shutdown_listen(struct file *file, int how)
{
 struct socket *sock;
 int err;

 sock = file->private_data;
 if (sock->sk->sk_state == TCP_LISTEN) {
  struct file *sfile = file->sub_file;

  err = sock->ops->shutdown(sock, how);
  if (!err && sfile && sfile->private_data) {
   struct socket *ssock;

   ssock = sfile->private_data;
   err = ssock->ops->shutdown(ssock, how);
  }
 } else {
  err = sock->ops->shutdown(sock, how);
 }

 return err;
}
