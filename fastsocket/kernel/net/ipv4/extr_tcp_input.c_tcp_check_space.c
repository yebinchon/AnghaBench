
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {TYPE_1__* sk_socket; } ;
struct TYPE_2__ {int flags; } ;


 int SOCK_NOSPACE ;
 int SOCK_QUEUE_SHRUNK ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_reset_flag (struct sock*,int ) ;
 int tcp_new_space (struct sock*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void tcp_check_space(struct sock *sk)
{
 if (sock_flag(sk, SOCK_QUEUE_SHRUNK)) {
  sock_reset_flag(sk, SOCK_QUEUE_SHRUNK);
  if (sk->sk_socket &&
      test_bit(SOCK_NOSPACE, &sk->sk_socket->flags))
   tcp_new_space(sk);
 }
}
