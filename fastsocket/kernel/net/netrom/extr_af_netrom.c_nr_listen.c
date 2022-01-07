
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; } ;
struct TYPE_2__ {int user_addr; } ;


 int AX25_ADDR_LEN ;
 int EOPNOTSUPP ;
 scalar_t__ TCP_LISTEN ;
 int lock_sock (struct sock*) ;
 int memset (int *,int ,int ) ;
 TYPE_1__* nr_sk (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int nr_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;

 lock_sock(sk);
 if (sk->sk_state != TCP_LISTEN) {
  memset(&nr_sk(sk)->user_addr, 0, AX25_ADDR_LEN);
  sk->sk_max_ack_backlog = backlog;
  sk->sk_state = TCP_LISTEN;
  release_sock(sk);
  return 0;
 }
 release_sock(sk);

 return -EOPNOTSUPP;
}
