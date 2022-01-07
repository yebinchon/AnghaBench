
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_omem_alloc; } ;
struct sk_filter {int rcu; } ;


 int atomic_sub (unsigned int,int *) ;
 int call_rcu_bh (int *,int ) ;
 unsigned int sk_filter_len (struct sk_filter*) ;
 int sk_filter_rcu_release ;

__attribute__((used)) static void sk_filter_delayed_uncharge(struct sock *sk, struct sk_filter *fp)
{
 unsigned int size = sk_filter_len(fp);

 atomic_sub(size, &sk->sk_omem_alloc);
 call_rcu_bh(&fp->rcu, sk_filter_rcu_release);
}
