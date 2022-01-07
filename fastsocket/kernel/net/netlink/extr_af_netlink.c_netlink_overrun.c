
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_drops; int (* sk_error_report ) (struct sock*) ;int sk_err; } ;
struct netlink_sock {int flags; int state; } ;


 int ENOBUFS ;
 int NETLINK_RECV_NO_ENOBUFS ;
 int atomic_inc (int *) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int stub1 (struct sock*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void netlink_overrun(struct sock *sk)
{
 struct netlink_sock *nlk = nlk_sk(sk);

 if (!(nlk->flags & NETLINK_RECV_NO_ENOBUFS)) {
  if (!test_and_set_bit(0, &nlk_sk(sk)->state)) {
   sk->sk_err = ENOBUFS;
   sk->sk_error_report(sk);
  }
 }
 atomic_inc(&sk->sk_drops);
}
