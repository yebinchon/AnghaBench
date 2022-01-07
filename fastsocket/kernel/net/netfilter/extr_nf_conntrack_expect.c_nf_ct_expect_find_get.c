
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_expect {int use; } ;
struct net {int dummy; } ;


 struct nf_conntrack_expect* __nf_ct_expect_find (struct net*,struct nf_conntrack_tuple const*) ;
 int atomic_inc_not_zero (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct nf_conntrack_expect *
nf_ct_expect_find_get(struct net *net, const struct nf_conntrack_tuple *tuple)
{
 struct nf_conntrack_expect *i;

 rcu_read_lock();
 i = __nf_ct_expect_find(net, tuple);
 if (i && !atomic_inc_not_zero(&i->use))
  i = ((void*)0);
 rcu_read_unlock();

 return i;
}
