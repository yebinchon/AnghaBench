
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn_nat {int bysource; struct nf_conn* ct; } ;
struct nf_conn {int status; } ;


 int IPS_SRC_NAT_DONE ;
 int hlist_replace_rcu (int *,int *) ;
 int nf_nat_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void nf_nat_move_storage(void *new, void *old)
{
 struct nf_conn_nat *new_nat = new;
 struct nf_conn_nat *old_nat = old;
 struct nf_conn *ct = old_nat->ct;

 if (!ct || !(ct->status & IPS_SRC_NAT_DONE))
  return;

 spin_lock_bh(&nf_nat_lock);
 hlist_replace_rcu(&old_nat->bysource, &new_nat->bysource);
 spin_unlock_bh(&nf_nat_lock);
}
