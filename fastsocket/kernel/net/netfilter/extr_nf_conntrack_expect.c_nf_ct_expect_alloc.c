
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {int rcu; int use; struct nf_conn* master; } ;
struct nf_conn {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_RCU_HEAD (int *) ;
 int atomic_set (int *,int) ;
 struct nf_conntrack_expect* kmem_cache_alloc (int ,int ) ;
 int nf_ct_expect_cachep ;

struct nf_conntrack_expect *nf_ct_expect_alloc(struct nf_conn *me)
{
 struct nf_conntrack_expect *new;

 new = kmem_cache_alloc(nf_ct_expect_cachep, GFP_ATOMIC);
 if (!new)
  return ((void*)0);

 new->master = me;
 atomic_set(&new->use, 1);
 INIT_RCU_HEAD(&new->rcu);
 return new;
}
