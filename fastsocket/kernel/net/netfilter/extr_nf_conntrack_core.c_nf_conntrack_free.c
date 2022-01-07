
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conn {int dummy; } ;
struct TYPE_2__ {int nf_conntrack_cachep; int count; } ;
struct net {TYPE_1__ ct; } ;


 int atomic_dec (int *) ;
 int kmem_cache_free (int ,struct nf_conn*) ;
 int nf_ct_ext_destroy (struct nf_conn*) ;
 int nf_ct_ext_free (struct nf_conn*) ;
 struct net* nf_ct_net (struct nf_conn*) ;

void nf_conntrack_free(struct nf_conn *ct)
{
 struct net *net = nf_ct_net(ct);

 nf_ct_ext_destroy(ct);
 atomic_dec(&net->ct.count);
 nf_ct_ext_free(ct);
 kmem_cache_free(net->ct.nf_conntrack_cachep, ct);
}
