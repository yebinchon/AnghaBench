
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conntrack_tuple_hash {int tuple; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct TYPE_2__ {int use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;
struct net {int dummy; } ;


 struct nf_conntrack_tuple_hash* __nf_conntrack_find (struct net*,struct nf_conntrack_tuple const*) ;
 int atomic_inc_not_zero (int *) ;
 scalar_t__ nf_ct_is_dying (struct nf_conn*) ;
 int nf_ct_put (struct nf_conn*) ;
 int nf_ct_tuple_equal (struct nf_conntrack_tuple const*,int *) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

struct nf_conntrack_tuple_hash *
nf_conntrack_find_get(struct net *net, const struct nf_conntrack_tuple *tuple)
{
 struct nf_conntrack_tuple_hash *h;
 struct nf_conn *ct;

 rcu_read_lock();
begin:
 h = __nf_conntrack_find(net, tuple);
 if (h) {
  ct = nf_ct_tuplehash_to_ctrack(h);
  if (unlikely(nf_ct_is_dying(ct) ||
        !atomic_inc_not_zero(&ct->ct_general.use)))
   h = ((void*)0);
  else {
   if (unlikely(!nf_ct_tuple_equal(tuple, &h->tuple))) {
    nf_ct_put(ct);
    goto begin;
   }
  }
 }
 rcu_read_unlock();

 return h;
}
