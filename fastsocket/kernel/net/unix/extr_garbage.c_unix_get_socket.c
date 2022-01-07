
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {TYPE_3__* ops; struct sock* sk; } ;
struct sock {int dummy; } ;
struct inode {int i_mode; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 scalar_t__ PF_UNIX ;
 struct socket* SOCKET_I (struct inode*) ;
 scalar_t__ S_ISSOCK (int ) ;

struct sock *unix_get_socket(struct file *filp)
{
 struct sock *u_sock = ((void*)0);
 struct inode *inode = filp->f_path.dentry->d_inode;




 if (S_ISSOCK(inode->i_mode)) {
  struct socket *sock = SOCKET_I(inode);
  struct sock *s = sock->sk;




  if (s && sock->ops && sock->ops->family == PF_UNIX)
   u_sock = s;
 }
 return u_sock;
}
