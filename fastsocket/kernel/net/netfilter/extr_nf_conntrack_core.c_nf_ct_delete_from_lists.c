
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;
struct net {int dummy; } ;


 int NF_CT_STAT_INC (struct net*,int ) ;
 int clean_from_lists (struct nf_conn*) ;
 int delete_list ;
 int nf_conntrack_lock ;
 int nf_ct_helper_destroy (struct nf_conn*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void nf_ct_delete_from_lists(struct nf_conn *ct)
{
 struct net *net = nf_ct_net(ct);

 nf_ct_helper_destroy(ct);
 spin_lock_bh(&nf_conntrack_lock);


 NF_CT_STAT_INC(net, delete_list);
 clean_from_lists(ct);
 spin_unlock_bh(&nf_conntrack_lock);
}
