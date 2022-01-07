
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_conntrack_tuple_hash {int hnnode; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conntrack_l4proto {int (* new ) (struct nf_conn*,struct sk_buff*,unsigned int) ;} ;
struct nf_conntrack_l3proto {int dummy; } ;
struct nf_conntrack_expect {int (* expectfn ) (struct nf_conn*,struct nf_conntrack_expect*) ;TYPE_1__* master; scalar_t__ helper; } ;
struct nf_conn_help {int helper; } ;
struct nf_conn {struct nf_conntrack_tuple_hash* tuplehash; TYPE_1__* master; int secmark; int mark; int status; } ;
struct TYPE_4__ {int unconfirmed; } ;
struct net {TYPE_2__ ct; } ;
struct TYPE_3__ {int ct_general; int secmark; int mark; } ;


 int GFP_ATOMIC ;
 int IPS_EXPECTED_BIT ;
 size_t IP_CT_DIR_ORIGINAL ;
 scalar_t__ IS_ERR (struct nf_conn*) ;
 int NF_CT_STAT_INC (struct net*,int ) ;
 int __nf_ct_try_assign_helper (struct nf_conn*,int ) ;
 int __set_bit (int ,int *) ;
 int expect_new ;
 int hlist_nulls_add_head_rcu (int *,int *) ;
 int new ;
 struct nf_conn* nf_conntrack_alloc (struct net*,struct nf_conntrack_tuple const*,struct nf_conntrack_tuple*,int ) ;
 int nf_conntrack_free (struct nf_conn*) ;
 int nf_conntrack_get (int *) ;
 int nf_conntrack_lock ;
 int nf_ct_acct_ext_add (struct nf_conn*,int ) ;
 int nf_ct_ecache_ext_add (struct nf_conn*,int ) ;
 int nf_ct_expect_put (struct nf_conntrack_expect*) ;
 struct nf_conntrack_expect* nf_ct_find_expectation (struct net*,struct nf_conntrack_tuple const*) ;
 struct nf_conn_help* nf_ct_helper_ext_add (struct nf_conn*,int ) ;
 int nf_ct_invert_tuple (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*,struct nf_conntrack_l3proto*,struct nf_conntrack_l4proto*) ;
 int pr_debug (char*,...) ;
 int rcu_assign_pointer (int ,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct nf_conn*,struct sk_buff*,unsigned int) ;
 int stub2 (struct nf_conn*,struct nf_conntrack_expect*) ;

__attribute__((used)) static struct nf_conntrack_tuple_hash *
init_conntrack(struct net *net,
        const struct nf_conntrack_tuple *tuple,
        struct nf_conntrack_l3proto *l3proto,
        struct nf_conntrack_l4proto *l4proto,
        struct sk_buff *skb,
        unsigned int dataoff)
{
 struct nf_conn *ct;
 struct nf_conn_help *help;
 struct nf_conntrack_tuple repl_tuple;
 struct nf_conntrack_expect *exp;

 if (!nf_ct_invert_tuple(&repl_tuple, tuple, l3proto, l4proto)) {
  pr_debug("Can't invert tuple.\n");
  return ((void*)0);
 }

 ct = nf_conntrack_alloc(net, tuple, &repl_tuple, GFP_ATOMIC);
 if (IS_ERR(ct)) {
  pr_debug("Can't allocate conntrack.\n");
  return (struct nf_conntrack_tuple_hash *)ct;
 }

 if (!l4proto->new(ct, skb, dataoff)) {
  nf_conntrack_free(ct);
  pr_debug("init conntrack: can't track with proto module\n");
  return ((void*)0);
 }

 nf_ct_acct_ext_add(ct, GFP_ATOMIC);
 nf_ct_ecache_ext_add(ct, GFP_ATOMIC);

 spin_lock_bh(&nf_conntrack_lock);
 exp = nf_ct_find_expectation(net, tuple);
 if (exp) {
  pr_debug("conntrack: expectation arrives ct=%p exp=%p\n",
    ct, exp);

  __set_bit(IPS_EXPECTED_BIT, &ct->status);
  ct->master = exp->master;
  if (exp->helper) {
   help = nf_ct_helper_ext_add(ct, GFP_ATOMIC);
   if (help)
    rcu_assign_pointer(help->helper, exp->helper);
  }







  nf_conntrack_get(&ct->master->ct_general);
  NF_CT_STAT_INC(net, expect_new);
 } else {
  __nf_ct_try_assign_helper(ct, GFP_ATOMIC);
  NF_CT_STAT_INC(net, new);
 }


 hlist_nulls_add_head_rcu(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode,
         &net->ct.unconfirmed);

 spin_unlock_bh(&nf_conntrack_lock);

 if (exp) {
  if (exp->expectfn)
   exp->expectfn(ct, exp);
  nf_ct_expect_put(exp);
 }

 return &ct->tuplehash[IP_CT_DIR_ORIGINAL];
}
