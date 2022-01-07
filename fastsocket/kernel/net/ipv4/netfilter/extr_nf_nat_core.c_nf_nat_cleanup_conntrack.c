
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conn_nat {int bysource; TYPE_1__* ct; } ;
struct nf_conn {int dummy; } ;
struct TYPE_2__ {int status; } ;


 int IPS_SRC_NAT_DONE ;
 int NF_CT_ASSERT (int) ;
 int NF_CT_EXT_NAT ;
 int hlist_del_rcu (int *) ;
 struct nf_conn_nat* nf_ct_ext_find (struct nf_conn*,int ) ;
 int nf_nat_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void nf_nat_cleanup_conntrack(struct nf_conn *ct)
{
 struct nf_conn_nat *nat = nf_ct_ext_find(ct, NF_CT_EXT_NAT);

 if (nat == ((void*)0) || nat->ct == ((void*)0))
  return;

 NF_CT_ASSERT(nat->ct->status & IPS_SRC_NAT_DONE);

 spin_lock_bh(&nf_nat_lock);
 hlist_del_rcu(&nat->bysource);
 spin_unlock_bh(&nf_nat_lock);
}
