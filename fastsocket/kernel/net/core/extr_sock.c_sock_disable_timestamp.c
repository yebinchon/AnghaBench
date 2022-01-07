
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int SOCK_TIMESTAMP ;
 int SOCK_TIMESTAMPING_RX_SOFTWARE ;
 int net_disable_timestamp () ;
 scalar_t__ sock_flag (struct sock*,int) ;
 int sock_reset_flag (struct sock*,int) ;

__attribute__((used)) static void sock_disable_timestamp(struct sock *sk, int flag)
{
 if (sock_flag(sk, flag)) {
  sock_reset_flag(sk, flag);
  if (!sock_flag(sk, SOCK_TIMESTAMP) &&
      !sock_flag(sk, SOCK_TIMESTAMPING_RX_SOFTWARE)) {
   net_disable_timestamp();
  }
 }
}
