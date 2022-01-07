
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_sock {struct socket* sk_sock; } ;
struct socket {int dummy; } ;


 int TIOCINQ ;
 int kernel_sock_ioctl (struct socket*,int ,unsigned long) ;

__attribute__((used)) static int svc_recv_available(struct svc_sock *svsk)
{
 struct socket *sock = svsk->sk_sock;
 int avail, err;

 err = kernel_sock_ioctl(sock, TIOCINQ, (unsigned long) &avail);

 return (err >= 0)? avail : err;
}
