
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conntrack_l4proto {int (* destroy ) (struct nf_conn*) ;} ;
struct nf_conntrack {int use; } ;
struct nf_conn {scalar_t__ master; TYPE_1__* tuplehash; int timeout; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int hnnode; } ;


 int BUG_ON (int ) ;
 size_t IP_CT_DIR_ORIGINAL ;
 int NF_CT_ASSERT (int) ;
 int NF_CT_STAT_INC (struct net*,int ) ;
 struct nf_conntrack_l4proto* __nf_ct_l4proto_find (int ,int ) ;
 scalar_t__ atomic_read (int *) ;
 int delete ;
 int hlist_nulls_del_rcu (int *) ;
 int hlist_nulls_unhashed (int *) ;
 int nf_conntrack_free (struct nf_conn*) ;
 int nf_conntrack_lock ;
 int nf_ct_is_confirmed (struct nf_conn*) ;
 int nf_ct_l3num (struct nf_conn*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 int nf_ct_protonum (struct nf_conn*) ;
 int nf_ct_put (scalar_t__) ;
 int nf_ct_remove_expectations (struct nf_conn*) ;
 int pr_debug (char*,struct nf_conn*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct nf_conn*) ;
 int timer_pending (int *) ;

__attribute__((used)) static void
destroy_conntrack(struct nf_conntrack *nfct)
{
 struct nf_conn *ct = (struct nf_conn *)nfct;
 struct net *net = nf_ct_net(ct);
 struct nf_conntrack_l4proto *l4proto;

 pr_debug("destroy_conntrack(%p)\n", ct);
 NF_CT_ASSERT(atomic_read(&nfct->use) == 0);
 NF_CT_ASSERT(!timer_pending(&ct->timeout));




 rcu_read_lock();
 l4proto = __nf_ct_l4proto_find(nf_ct_l3num(ct), nf_ct_protonum(ct));
 if (l4proto && l4proto->destroy)
  l4proto->destroy(ct);

 rcu_read_unlock();

 spin_lock_bh(&nf_conntrack_lock);




 nf_ct_remove_expectations(ct);


 if (!nf_ct_is_confirmed(ct)) {
  BUG_ON(hlist_nulls_unhashed(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode));
  hlist_nulls_del_rcu(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode);
 }

 NF_CT_STAT_INC(net, delete);
 spin_unlock_bh(&nf_conntrack_lock);

 if (ct->master)
  nf_ct_put(ct->master);

 pr_debug("destroy_conntrack: returning ct=%p to slab\n", ct);
 nf_conntrack_free(ct);
}
