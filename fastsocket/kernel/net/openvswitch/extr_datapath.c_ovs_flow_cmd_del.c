
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sw_flow {int dummy; } ;
struct sk_buff {int sk; } ;
struct ovs_header {int dp_ifindex; } ;
struct nlattr {int dummy; } ;
struct genl_info {int snd_seq; int snd_pid; struct ovs_header* userhdr; struct nlattr** attrs; } ;
struct flow_table {int dummy; } ;
struct datapath {int table; } ;


 int BUG_ON (int) ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 size_t OVS_FLOW_ATTR_KEY ;
 int OVS_FLOW_CMD_DEL ;
 int flush_flows (struct datapath*) ;
 struct datapath* get_dp (int ,int ) ;
 int ovs_dp_flow_multicast_group ;
 struct sk_buff* ovs_flow_cmd_alloc_info (struct sw_flow*) ;
 int ovs_flow_cmd_fill_info (struct sw_flow*,struct datapath*,struct sk_buff*,int ,int ,int ,int ) ;
 int ovs_flow_deferred_free (struct sw_flow*) ;
 int ovs_flow_from_nlattrs (struct sw_flow_key*,int*,struct nlattr*) ;
 struct sw_flow* ovs_flow_tbl_lookup (struct flow_table*,struct sw_flow_key*,int) ;
 int ovs_flow_tbl_remove (struct flow_table*,struct sw_flow*) ;
 int ovs_lock () ;
 int ovs_notify (struct sk_buff*,struct genl_info*,int *) ;
 int ovs_unlock () ;
 struct flow_table* ovsl_dereference (int ) ;
 int sock_net (int ) ;

__attribute__((used)) static int ovs_flow_cmd_del(struct sk_buff *skb, struct genl_info *info)
{
 struct nlattr **a = info->attrs;
 struct ovs_header *ovs_header = info->userhdr;
 struct sw_flow_key key;
 struct sk_buff *reply;
 struct sw_flow *flow;
 struct datapath *dp;
 struct flow_table *table;
 int err;
 int key_len;

 ovs_lock();
 dp = get_dp(sock_net(skb->sk), ovs_header->dp_ifindex);
 if (!dp) {
  err = -ENODEV;
  goto unlock;
 }

 if (!a[OVS_FLOW_ATTR_KEY]) {
  err = flush_flows(dp);
  goto unlock;
 }
 err = ovs_flow_from_nlattrs(&key, &key_len, a[OVS_FLOW_ATTR_KEY]);
 if (err)
  goto unlock;

 table = ovsl_dereference(dp->table);
 flow = ovs_flow_tbl_lookup(table, &key, key_len);
 if (!flow) {
  err = -ENOENT;
  goto unlock;
 }

 reply = ovs_flow_cmd_alloc_info(flow);
 if (!reply) {
  err = -ENOMEM;
  goto unlock;
 }

 ovs_flow_tbl_remove(table, flow);

 err = ovs_flow_cmd_fill_info(flow, dp, reply, info->snd_pid,
         info->snd_seq, 0, OVS_FLOW_CMD_DEL);
 BUG_ON(err < 0);

 ovs_flow_deferred_free(flow);
 ovs_unlock();

 ovs_notify(reply, info, &ovs_dp_flow_multicast_group);
 return 0;
unlock:
 ovs_unlock();
 return err;
}
