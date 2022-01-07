
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;


 scalar_t__ TCP_TIME_WAIT ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void
xt_socket_put_sk(struct sock *sk)
{
 if (sk->sk_state == TCP_TIME_WAIT)
  inet_twsk_put(inet_twsk(sk));
 else
  sock_put(sk);
}
