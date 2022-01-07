
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_filter; } ;
struct sk_filter {int dummy; } ;


 int ENOENT ;
 int rcu_assign_pointer (int ,int *) ;
 struct sk_filter* rcu_dereference (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int sk_filter_delayed_uncharge (struct sock*,struct sk_filter*) ;

int sk_detach_filter(struct sock *sk)
{
 int ret = -ENOENT;
 struct sk_filter *filter;

 rcu_read_lock_bh();
 filter = rcu_dereference(sk->sk_filter);
 if (filter) {
  rcu_assign_pointer(sk->sk_filter, ((void*)0));
  sk_filter_delayed_uncharge(sk, filter);
  ret = 0;
 }
 rcu_read_unlock_bh();
 return ret;
}
