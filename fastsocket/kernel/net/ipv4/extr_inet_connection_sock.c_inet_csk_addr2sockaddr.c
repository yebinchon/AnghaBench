
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct inet_sock {int dport; int daddr; } ;


 int AF_INET ;
 struct inet_sock* inet_sk (struct sock*) ;

void inet_csk_addr2sockaddr(struct sock *sk, struct sockaddr *uaddr)
{
 struct sockaddr_in *sin = (struct sockaddr_in *)uaddr;
 const struct inet_sock *inet = inet_sk(sk);

 sin->sin_family = AF_INET;
 sin->sin_addr.s_addr = inet->daddr;
 sin->sin_port = inet->dport;
}
