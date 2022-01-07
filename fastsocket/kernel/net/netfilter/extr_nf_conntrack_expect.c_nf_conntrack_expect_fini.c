
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expect_vmalloc; int expect_hash; } ;
struct net {TYPE_1__ ct; } ;


 int exp_proc_remove (struct net*) ;
 int init_net ;
 int kmem_cache_destroy (int ) ;
 scalar_t__ net_eq (struct net*,int *) ;
 int nf_ct_expect_cachep ;
 int nf_ct_expect_hsize ;
 int nf_ct_free_hashtable (int ,int ,int ) ;
 int rcu_barrier () ;

void nf_conntrack_expect_fini(struct net *net)
{
 exp_proc_remove(net);
 if (net_eq(net, &init_net)) {
  rcu_barrier();
  kmem_cache_destroy(nf_ct_expect_cachep);
 }
 nf_ct_free_hashtable(net->ct.expect_hash, net->ct.expect_vmalloc,
        nf_ct_expect_hsize);
}
