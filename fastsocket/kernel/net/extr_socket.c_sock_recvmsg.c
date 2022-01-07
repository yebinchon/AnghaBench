
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sock_iocb {int dummy; } ;
struct msghdr {int dummy; } ;
struct kiocb {struct sock_iocb* private; } ;


 int EIOCBQUEUED ;
 int __sock_recvmsg (struct kiocb*,struct socket*,struct msghdr*,size_t,int) ;
 int init_sync_kiocb (struct kiocb*,int *) ;
 int wait_on_sync_kiocb (struct kiocb*) ;

int sock_recvmsg(struct socket *sock, struct msghdr *msg,
   size_t size, int flags)
{
 struct kiocb iocb;
 struct sock_iocb siocb;
 int ret;

 init_sync_kiocb(&iocb, ((void*)0));
 iocb.private = &siocb;
 ret = __sock_recvmsg(&iocb, sock, msg, size, flags);
 if (-EIOCBQUEUED == ret)
  ret = wait_on_sync_kiocb(&iocb);
 return ret;
}
