
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slock; } ;
struct sock {TYPE_1__ sk_lock; } ;
struct net {int dummy; } ;


 struct sock* icmp_sk (struct net*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int spin_trylock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct sock *icmp_xmit_lock(struct net *net)
{
 struct sock *sk;

 local_bh_disable();

 sk = icmp_sk(net);

 if (unlikely(!spin_trylock(&sk->sk_lock.slock))) {



  local_bh_enable();
  return ((void*)0);
 }
 return sk;
}
