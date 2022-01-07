
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_filter; } ;
struct sk_filter {int len; int insns; } ;
struct sk_buff {int dummy; } ;


 struct sk_filter* rcu_dereference (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 unsigned int sk_run_filter (struct sk_buff*,int ,int ) ;

__attribute__((used)) static inline unsigned int run_filter(struct sk_buff *skb, struct sock *sk,
          unsigned int res)
{
 struct sk_filter *filter;

 rcu_read_lock_bh();
 filter = rcu_dereference(sk->sk_filter);
 if (filter != ((void*)0))
  res = sk_run_filter(skb, filter->insns, filter->len);
 rcu_read_unlock_bh();

 return res;
}
