
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; int sk; } ;
struct sock_iocb {size_t size; struct msghdr* msg; int * scm; struct socket* sock; } ;
struct msghdr {int dummy; } ;
struct kiocb {int dummy; } ;
struct TYPE_2__ {int (* sendmsg ) (struct kiocb*,struct socket*,struct msghdr*,size_t) ;} ;


 struct sock_iocb* kiocb_to_siocb (struct kiocb*) ;
 int sock_update_classid (int ) ;
 int sock_update_netprioidx (int ) ;
 int stub1 (struct kiocb*,struct socket*,struct msghdr*,size_t) ;

__attribute__((used)) static inline int __sock_sendmsg_nosec(struct kiocb *iocb, struct socket *sock,
           struct msghdr *msg, size_t size)
{
 struct sock_iocb *si = kiocb_to_siocb(iocb);

 sock_update_classid(sock->sk);

 sock_update_netprioidx(sock->sk);

 si->sock = sock;
 si->scm = ((void*)0);
 si->msg = msg;
 si->size = size;

 return sock->ops->sendmsg(iocb, sock, msg, size);
}
