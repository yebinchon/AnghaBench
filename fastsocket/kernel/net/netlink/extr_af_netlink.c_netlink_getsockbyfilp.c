
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {scalar_t__ sk_family; } ;
struct inode {int i_mode; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {struct sock* sk; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 scalar_t__ AF_NETLINK ;
 int EINVAL ;
 int ENOTSOCK ;
 struct sock* ERR_PTR (int ) ;
 TYPE_3__* SOCKET_I (struct inode*) ;
 int S_ISSOCK (int ) ;
 int sock_hold (struct sock*) ;

struct sock *netlink_getsockbyfilp(struct file *filp)
{
 struct inode *inode = filp->f_path.dentry->d_inode;
 struct sock *sock;

 if (!S_ISSOCK(inode->i_mode))
  return ERR_PTR(-ENOTSOCK);

 sock = SOCKET_I(inode)->sk;
 if (sock->sk_family != AF_NETLINK)
  return ERR_PTR(-EINVAL);

 sock_hold(sock);
 return sock;
}
