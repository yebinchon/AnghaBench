
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {int sin_zero; TYPE_1__ sin_addr; scalar_t__ sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; } ;
struct inet_sock {scalar_t__ sport; scalar_t__ saddr; scalar_t__ rcv_saddr; scalar_t__ daddr; scalar_t__ dport; } ;
typedef scalar_t__ __be32 ;


 int AF_INET ;
 int ENOTCONN ;
 int TCPF_CLOSE ;
 int TCPF_SYN_SENT ;
 struct inet_sock* inet_sk (struct sock*) ;
 int memset (int ,int ,int) ;

int inet_getname(struct socket *sock, struct sockaddr *uaddr,
   int *uaddr_len, int peer)
{
 struct sock *sk = sock->sk;
 struct inet_sock *inet = inet_sk(sk);
 struct sockaddr_in *sin = (struct sockaddr_in *)uaddr;

 sin->sin_family = AF_INET;
 if (peer) {
  if (!inet->dport ||
      (((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_SYN_SENT)) &&
       peer == 1))
   return -ENOTCONN;
  sin->sin_port = inet->dport;
  sin->sin_addr.s_addr = inet->daddr;
 } else {
  __be32 addr = inet->rcv_saddr;
  if (!addr)
   addr = inet->saddr;
  sin->sin_port = inet->sport;
  sin->sin_addr.s_addr = addr;
 }
 memset(sin->sin_zero, 0, sizeof(sin->sin_zero));
 *uaddr_len = sizeof(*sin);
 return 0;
}
