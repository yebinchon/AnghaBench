
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int SOCK_TIMESTAMP ;
 int SOCK_TIMESTAMPING_RX_SOFTWARE ;
 int net_enable_timestamp () ;
 int sock_flag (struct sock*,int) ;
 int sock_set_flag (struct sock*,int) ;

void sock_enable_timestamp(struct sock *sk, int flag)
{
 if (!sock_flag(sk, flag)) {
  sock_set_flag(sk, flag);





  if (!sock_flag(sk,
    flag == SOCK_TIMESTAMP ?
    SOCK_TIMESTAMPING_RX_SOFTWARE :
    SOCK_TIMESTAMP))
   net_enable_timestamp();
 }
}
