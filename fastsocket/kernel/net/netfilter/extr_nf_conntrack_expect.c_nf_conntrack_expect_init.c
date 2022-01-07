
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conntrack_expect {int dummy; } ;
struct TYPE_2__ {int htable_size; int expect_vmalloc; int * expect_hash; scalar_t__ expect_count; } ;
struct net {TYPE_1__ ct; } ;


 int ENOMEM ;
 int exp_proc_init (struct net*) ;
 int init_net ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int kmem_cache_destroy (int ) ;
 scalar_t__ net_eq (struct net*,int *) ;
 int * nf_ct_alloc_hashtable (int*,int *,int ) ;
 int nf_ct_expect_cachep ;
 int nf_ct_expect_hsize ;
 int nf_ct_expect_max ;
 int nf_ct_free_hashtable (int *,int ,int) ;

int nf_conntrack_expect_init(struct net *net)
{
 int err = -ENOMEM;

 if (net_eq(net, &init_net)) {
  if (!nf_ct_expect_hsize) {
   nf_ct_expect_hsize = net->ct.htable_size / 256;
   if (!nf_ct_expect_hsize)
    nf_ct_expect_hsize = 1;
  }
  nf_ct_expect_max = nf_ct_expect_hsize * 4;
 }

 net->ct.expect_count = 0;
 net->ct.expect_hash = nf_ct_alloc_hashtable(&nf_ct_expect_hsize,
        &net->ct.expect_vmalloc, 0);
 if (net->ct.expect_hash == ((void*)0))
  goto err1;

 if (net_eq(net, &init_net)) {
  nf_ct_expect_cachep = kmem_cache_create("nf_conntrack_expect",
     sizeof(struct nf_conntrack_expect),
     0, 0, ((void*)0));
  if (!nf_ct_expect_cachep)
   goto err2;
 }

 err = exp_proc_init(net);
 if (err < 0)
  goto err3;

 return 0;

err3:
 if (net_eq(net, &init_net))
  kmem_cache_destroy(nf_ct_expect_cachep);
err2:
 nf_ct_free_hashtable(net->ct.expect_hash, net->ct.expect_vmalloc,
        nf_ct_expect_hsize);
err1:
 return err;
}
