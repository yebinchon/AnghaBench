
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct TYPE_5__ {scalar_t__ transparent; } ;
struct TYPE_4__ {scalar_t__ tw_transparent; } ;


 scalar_t__ TCP_TIME_WAIT ;
 TYPE_3__* inet_sk (struct sock*) ;
 TYPE_1__* inet_twsk (struct sock*) ;
 int inet_twsk_put (TYPE_1__*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static bool tproxy_sk_is_transparent(struct sock *sk)
{
 if (sk->sk_state != TCP_TIME_WAIT) {
  if (inet_sk(sk)->transparent)
   return 1;
  sock_put(sk);
 } else {
  if (inet_twsk(sk)->tw_transparent)
   return 1;
  inet_twsk_put(inet_twsk(sk));
 }
 return 0;
}
