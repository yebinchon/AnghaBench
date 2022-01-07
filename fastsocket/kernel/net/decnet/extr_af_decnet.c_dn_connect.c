
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_dn {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;


 int O_NONBLOCK ;
 int __dn_connect (struct sock*,struct sockaddr_dn*,int,long*,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 long sock_sndtimeo (struct sock*,int) ;

__attribute__((used)) static int dn_connect(struct socket *sock, struct sockaddr *uaddr, int addrlen, int flags)
{
 struct sockaddr_dn *addr = (struct sockaddr_dn *)uaddr;
 struct sock *sk = sock->sk;
 int err;
 long timeo = sock_sndtimeo(sk, flags & O_NONBLOCK);

 lock_sock(sk);
 err = __dn_connect(sk, addr, addrlen, &timeo, 0);
 release_sock(sk);

 return err;
}
