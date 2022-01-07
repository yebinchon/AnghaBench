
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {size_t sk_protocol; } ;
struct TYPE_2__ {unsigned int groups; int listeners; } ;


 int BUG_ON (int) ;
 int netlink_is_kernel (struct sock*) ;
 TYPE_1__* nl_table ;
 unsigned long* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int test_bit (unsigned int,unsigned long*) ;

int netlink_has_listeners(struct sock *sk, unsigned int group)
{
 int res = 0;
 unsigned long *listeners;

 BUG_ON(!netlink_is_kernel(sk));

 rcu_read_lock();
 listeners = rcu_dereference(nl_table[sk->sk_protocol].listeners);

 if (group - 1 < nl_table[sk->sk_protocol].groups)
  res = test_bit(group - 1, listeners);

 rcu_read_unlock();

 return res;
}
