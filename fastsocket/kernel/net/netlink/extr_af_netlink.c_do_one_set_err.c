
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_error_report ) (struct sock*) ;int sk_err; } ;
struct netlink_sock {scalar_t__ pid; int ngroups; int groups; } ;
struct netlink_set_err_data {scalar_t__ pid; int group; int code; struct sock* exclude_sk; } ;


 struct netlink_sock* nlk_sk (struct sock*) ;
 scalar_t__ sock_net (struct sock*) ;
 int stub1 (struct sock*) ;
 int test_bit (int,int ) ;

__attribute__((used)) static inline int do_one_set_err(struct sock *sk,
     struct netlink_set_err_data *p)
{
 struct netlink_sock *nlk = nlk_sk(sk);

 if (sk == p->exclude_sk)
  goto out;

 if (sock_net(sk) != sock_net(p->exclude_sk))
  goto out;

 if (nlk->pid == p->pid || p->group - 1 >= nlk->ngroups ||
     !test_bit(p->group - 1, nlk->groups))
  goto out;

 sk->sk_err = p->code;
 sk->sk_error_report(sk);
out:
 return 0;
}
