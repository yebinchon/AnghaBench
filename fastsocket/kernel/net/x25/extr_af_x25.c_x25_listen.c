
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; } ;
struct TYPE_2__ {int dest_addr; } ;


 int EOPNOTSUPP ;
 scalar_t__ TCP_LISTEN ;
 int X25_ADDR_LEN ;
 int memset (int *,int ,int ) ;
 TYPE_1__* x25_sk (struct sock*) ;

__attribute__((used)) static int x25_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 int rc = -EOPNOTSUPP;

 if (sk->sk_state != TCP_LISTEN) {
  memset(&x25_sk(sk)->dest_addr, 0, X25_ADDR_LEN);
  sk->sk_max_ack_backlog = backlog;
  sk->sk_state = TCP_LISTEN;
  rc = 0;
 }

 return rc;
}
