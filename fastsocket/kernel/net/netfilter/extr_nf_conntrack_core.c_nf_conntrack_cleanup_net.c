
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stat; int slabname; int nf_conntrack_cachep; int htable_size; int hash_vmalloc; int hash; int count; } ;
struct net {TYPE_1__ ct; } ;


 scalar_t__ atomic_read (int *) ;
 int free_percpu (int ) ;
 int kfree (int ) ;
 int kill_all ;
 int kmem_cache_destroy (int ) ;
 int nf_conntrack_acct_fini (struct net*) ;
 int nf_conntrack_ecache_fini (struct net*) ;
 int nf_conntrack_expect_fini (struct net*) ;
 int nf_ct_free_hashtable (int ,int ,int ) ;
 int nf_ct_iterate_cleanup (struct net*,int ,int *) ;
 int nf_ct_release_dying_list (struct net*) ;
 int schedule () ;

__attribute__((used)) static void nf_conntrack_cleanup_net(struct net *net)
{
 i_see_dead_people:
 nf_ct_iterate_cleanup(net, kill_all, ((void*)0));
 nf_ct_release_dying_list(net);
 if (atomic_read(&net->ct.count) != 0) {
  schedule();
  goto i_see_dead_people;
 }

 nf_ct_free_hashtable(net->ct.hash, net->ct.hash_vmalloc,
        net->ct.htable_size);
 nf_conntrack_ecache_fini(net);
 nf_conntrack_acct_fini(net);
 nf_conntrack_expect_fini(net);
 kmem_cache_destroy(net->ct.nf_conntrack_cachep);
 kfree(net->ct.slabname);
 free_percpu(net->ct.stat);
}
