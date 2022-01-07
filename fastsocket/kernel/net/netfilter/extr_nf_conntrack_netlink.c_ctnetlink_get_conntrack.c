
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_flags; int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int nfgen_family; } ;
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
struct netlink_dump_control {int done; int dump; } ;
struct TYPE_2__ {int pid; } ;


 size_t CTA_TUPLE_ORIG ;
 size_t CTA_TUPLE_REPLY ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IPCTNL_MSG_CT_NEW ;
 int MSG_DONTWAIT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_DEFAULT_SIZE ;
 int NLM_F_DUMP ;
 int ctnetlink_done ;
 int ctnetlink_dump_table ;
 int ctnetlink_fill_info (struct sk_buff*,int ,int ,int ,struct nf_conn*) ;
 int ctnetlink_parse_tuple (struct nlattr const* const*,struct nf_conntrack_tuple*,size_t,int ) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_dump_start (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 struct nf_conntrack_tuple_hash* nf_conntrack_find_get (int *,struct nf_conntrack_tuple*) ;
 int nf_ct_put (struct nf_conn*) ;
 struct nf_conn* nf_ct_tuplehash_to_ctrack (struct nf_conntrack_tuple_hash*) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr const*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int
ctnetlink_get_conntrack(struct sock *ctnl, struct sk_buff *skb,
   const struct nlmsghdr *nlh,
   const struct nlattr * const cda[])
{
 struct nf_conntrack_tuple_hash *h;
 struct nf_conntrack_tuple tuple;
 struct nf_conn *ct;
 struct sk_buff *skb2 = ((void*)0);
 struct nfgenmsg *nfmsg = nlmsg_data(nlh);
 u_int8_t u3 = nfmsg->nfgen_family;
 int err = 0;

 if (nlh->nlmsg_flags & NLM_F_DUMP) {
  struct netlink_dump_control c = {
   .dump = ctnetlink_dump_table,
   .done = ctnetlink_done,
  };
  return netlink_dump_start(ctnl, skb, nlh, &c);
 }

 if (cda[CTA_TUPLE_ORIG])
  err = ctnetlink_parse_tuple(cda, &tuple, CTA_TUPLE_ORIG, u3);
 else if (cda[CTA_TUPLE_REPLY])
  err = ctnetlink_parse_tuple(cda, &tuple, CTA_TUPLE_REPLY, u3);
 else
  return -EINVAL;

 if (err < 0)
  return err;

 h = nf_conntrack_find_get(&init_net, &tuple);
 if (!h)
  return -ENOENT;

 ct = nf_ct_tuplehash_to_ctrack(h);

 err = -ENOMEM;
 skb2 = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (skb2 == ((void*)0)) {
  nf_ct_put(ct);
  return -ENOMEM;
 }

 rcu_read_lock();
 err = ctnetlink_fill_info(skb2, NETLINK_CB(skb).pid, nlh->nlmsg_seq,
      IPCTNL_MSG_CT_NEW, ct);
 rcu_read_unlock();
 nf_ct_put(ct);
 if (err <= 0)
  goto free;

 err = netlink_unicast(ctnl, skb2, NETLINK_CB(skb).pid, MSG_DONTWAIT);
 if (err < 0)
  goto out;

 return 0;

free:
 kfree_skb(skb2);
out:
 return err;
}
