
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_userlocks; void* sk_rcvbuf; void* sk_sndbuf; } ;


 void* RDS_TCP_DEFAULT_BUFSIZE ;
 int SOCK_RCVBUF_LOCK ;
 int SOCK_SNDBUF_LOCK ;
 int lock_sock (struct sock*) ;
 int rds_tcp_nonagle (struct socket*) ;
 int release_sock (struct sock*) ;

void rds_tcp_tune(struct socket *sock)
{
 struct sock *sk = sock->sk;

 rds_tcp_nonagle(sock);





 lock_sock(sk);
 sk->sk_sndbuf = RDS_TCP_DEFAULT_BUFSIZE;
 sk->sk_rcvbuf = RDS_TCP_DEFAULT_BUFSIZE;
 sk->sk_userlocks |= SOCK_SNDBUF_LOCK|SOCK_RCVBUF_LOCK;
 release_sock(sk);
}
