
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nf_nat_range {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn_nat {int bysource; struct nf_conn* ct; } ;
struct nf_conn {int status; TYPE_1__* tuplehash; } ;
struct TYPE_4__ {int * nat_bysource; } ;
struct net {TYPE_2__ ipv4; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
struct TYPE_3__ {struct nf_conntrack_tuple tuple; } ;


 int BUG_ON (int ) ;
 int GFP_ATOMIC ;
 int IPS_DST_NAT ;
 int IPS_DST_NAT_DONE_BIT ;
 int IPS_SRC_NAT ;
 int IPS_SRC_NAT_DONE_BIT ;
 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int IP_NAT_MANIP_DST ;
 int IP_NAT_MANIP_SRC ;
 unsigned int NF_ACCEPT ;
 int NF_CT_ASSERT (int) ;
 int NF_CT_EXT_NAT ;
 int get_unique_tuple (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*,struct nf_nat_range const*,struct nf_conn*,int) ;
 unsigned int hash_by_src (struct net*,struct nf_conntrack_tuple*) ;
 int hlist_add_head_rcu (int *,int *) ;
 int nf_conntrack_alter_reply (struct nf_conn*,struct nf_conntrack_tuple*) ;
 struct nf_conn_nat* nf_ct_ext_add (struct nf_conn*,int ,int ) ;
 int nf_ct_invert_tuplepr (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 int nf_ct_tuple_equal (struct nf_conntrack_tuple*,struct nf_conntrack_tuple*) ;
 int nf_nat_initialized (struct nf_conn*,int) ;
 int nf_nat_lock ;
 struct nf_conn_nat* nfct_nat (struct nf_conn*) ;
 int pr_debug (char*) ;
 int set_bit (int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

unsigned int
nf_nat_setup_info(struct nf_conn *ct,
    const struct nf_nat_range *range,
    enum nf_nat_manip_type maniptype)
{
 struct net *net = nf_ct_net(ct);
 struct nf_conntrack_tuple curr_tuple, new_tuple;
 struct nf_conn_nat *nat;


 nat = nfct_nat(ct);
 if (!nat) {
  nat = nf_ct_ext_add(ct, NF_CT_EXT_NAT, GFP_ATOMIC);
  if (nat == ((void*)0)) {
   pr_debug("failed to add NAT extension\n");
   return NF_ACCEPT;
  }
 }

 NF_CT_ASSERT(maniptype == IP_NAT_MANIP_SRC ||
       maniptype == IP_NAT_MANIP_DST);
 BUG_ON(nf_nat_initialized(ct, maniptype));






 nf_ct_invert_tuplepr(&curr_tuple,
        &ct->tuplehash[IP_CT_DIR_REPLY].tuple);

 get_unique_tuple(&new_tuple, &curr_tuple, range, ct, maniptype);

 if (!nf_ct_tuple_equal(&new_tuple, &curr_tuple)) {
  struct nf_conntrack_tuple reply;


  nf_ct_invert_tuplepr(&reply, &new_tuple);
  nf_conntrack_alter_reply(ct, &reply);


  if (maniptype == IP_NAT_MANIP_SRC)
   ct->status |= IPS_SRC_NAT;
  else
   ct->status |= IPS_DST_NAT;
 }

 if (maniptype == IP_NAT_MANIP_SRC) {
  unsigned int srchash;

  srchash = hash_by_src(net, &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);
  spin_lock_bh(&nf_nat_lock);

  nat = nfct_nat(ct);
  nat->ct = ct;
  hlist_add_head_rcu(&nat->bysource,
       &net->ipv4.nat_bysource[srchash]);
  spin_unlock_bh(&nf_nat_lock);
 }


 if (maniptype == IP_NAT_MANIP_DST)
  set_bit(IPS_DST_NAT_DONE_BIT, &ct->status);
 else
  set_bit(IPS_SRC_NAT_DONE_BIT, &ct->status);

 return NF_ACCEPT;
}
