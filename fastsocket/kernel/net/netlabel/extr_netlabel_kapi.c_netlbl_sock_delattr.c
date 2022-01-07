
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int cipso_v4_sock_delattr (struct sock*) ;

void netlbl_sock_delattr(struct sock *sk)
{
 cipso_v4_sock_delattr(sk);
}
