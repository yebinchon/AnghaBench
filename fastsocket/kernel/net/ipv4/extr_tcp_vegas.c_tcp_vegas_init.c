
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vegas {int baseRTT; } ;
struct sock {int dummy; } ;


 struct vegas* inet_csk_ca (struct sock*) ;
 int vegas_enable (struct sock*) ;

void tcp_vegas_init(struct sock *sk)
{
 struct vegas *vegas = inet_csk_ca(sk);

 vegas->baseRTT = 0x7fffffff;
 vegas_enable(sk);
}
