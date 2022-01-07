
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct sw_flow_actions {int actions_len; int actions; } ;
struct sw_flow {unsigned long used; int lock; scalar_t__ tcp_flags; int byte_count; scalar_t__ packet_count; int key; int sf_acts; } ;
struct sk_buff {int len; } ;
struct ovs_header {int dp_ifindex; } ;
struct ovs_flow_stats {scalar_t__ n_packets; int n_bytes; } ;
struct nlattr {int dummy; } ;
struct datapath {int dummy; } ;


 int EMSGSIZE ;
 int OVS_FLOW_ATTR_ACTIONS ;
 int OVS_FLOW_ATTR_KEY ;
 int OVS_FLOW_ATTR_STATS ;
 int OVS_FLOW_ATTR_TCP_FLAGS ;
 int OVS_FLOW_ATTR_USED ;
 int actions_to_attr (int ,int ,struct sk_buff*) ;
 int dp_flow_genl_family ;
 int genlmsg_cancel (struct sk_buff*,struct ovs_header*) ;
 int genlmsg_end (struct sk_buff*,struct ovs_header*) ;
 struct ovs_header* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,scalar_t__) ;
 int get_dpifindex (struct datapath*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct ovs_flow_stats*) ;
 scalar_t__ nla_put_u64 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;
 int ovs_flow_to_nlattrs (int *,struct sk_buff*) ;
 int ovs_flow_used_time (unsigned long) ;
 struct sw_flow_actions* ovsl_dereference (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ovs_flow_cmd_fill_info(struct sw_flow *flow, struct datapath *dp,
      struct sk_buff *skb, u32 pid,
      u32 seq, u32 flags, u8 cmd)
{
 const int skb_orig_len = skb->len;
 const struct sw_flow_actions *sf_acts;
 struct nlattr *start;
 struct ovs_flow_stats stats;
 struct ovs_header *ovs_header;
 struct nlattr *nla;
 unsigned long used;
 u8 tcp_flags;
 int err;

 sf_acts = ovsl_dereference(flow->sf_acts);

 ovs_header = genlmsg_put(skb, pid, seq, &dp_flow_genl_family, flags, cmd);
 if (!ovs_header)
  return -EMSGSIZE;

 ovs_header->dp_ifindex = get_dpifindex(dp);

 nla = nla_nest_start(skb, OVS_FLOW_ATTR_KEY);
 if (!nla)
  goto nla_put_failure;
 err = ovs_flow_to_nlattrs(&flow->key, skb);
 if (err)
  goto error;
 nla_nest_end(skb, nla);

 spin_lock_bh(&flow->lock);
 used = flow->used;
 stats.n_packets = flow->packet_count;
 stats.n_bytes = flow->byte_count;
 tcp_flags = flow->tcp_flags;
 spin_unlock_bh(&flow->lock);

 if (used &&
     nla_put_u64(skb, OVS_FLOW_ATTR_USED, ovs_flow_used_time(used)))
  goto nla_put_failure;

 if (stats.n_packets &&
     nla_put(skb, OVS_FLOW_ATTR_STATS,
      sizeof(struct ovs_flow_stats), &stats))
  goto nla_put_failure;

 if (tcp_flags &&
     nla_put_u8(skb, OVS_FLOW_ATTR_TCP_FLAGS, tcp_flags))
  goto nla_put_failure;
 start = nla_nest_start(skb, OVS_FLOW_ATTR_ACTIONS);
 if (start) {
  err = actions_to_attr(sf_acts->actions, sf_acts->actions_len, skb);
  if (!err)
   nla_nest_end(skb, start);
  else {
   if (skb_orig_len)
    goto error;

   nla_nest_cancel(skb, start);
  }
 } else if (skb_orig_len)
  goto nla_put_failure;

 return genlmsg_end(skb, ovs_header);

nla_put_failure:
 err = -EMSGSIZE;
error:
 genlmsg_cancel(skb, ovs_header);
 return err;
}
