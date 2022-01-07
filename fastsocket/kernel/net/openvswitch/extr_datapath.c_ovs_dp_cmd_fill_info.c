
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct ovs_header {int dp_ifindex; } ;
struct ovs_dp_stats {int dummy; } ;
struct datapath {int dummy; } ;


 int EMSGSIZE ;
 int OVS_DP_ATTR_NAME ;
 int OVS_DP_ATTR_STATS ;
 int dp_datapath_genl_family ;
 int genlmsg_cancel (struct sk_buff*,struct ovs_header*) ;
 int genlmsg_end (struct sk_buff*,struct ovs_header*) ;
 struct ovs_header* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int get_dp_stats (struct datapath*,struct ovs_dp_stats*) ;
 int get_dpifindex (struct datapath*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct ovs_dp_stats*) ;
 int nla_put_string (struct sk_buff*,int ,int ) ;
 int ovs_dp_name (struct datapath*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int ovs_dp_cmd_fill_info(struct datapath *dp, struct sk_buff *skb,
    u32 pid, u32 seq, u32 flags, u8 cmd)
{
 struct ovs_header *ovs_header;
 struct ovs_dp_stats dp_stats;
 int err;

 ovs_header = genlmsg_put(skb, pid, seq, &dp_datapath_genl_family,
       flags, cmd);
 if (!ovs_header)
  goto error;

 ovs_header->dp_ifindex = get_dpifindex(dp);

 rcu_read_lock();
 err = nla_put_string(skb, OVS_DP_ATTR_NAME, ovs_dp_name(dp));
 rcu_read_unlock();
 if (err)
  goto nla_put_failure;

 get_dp_stats(dp, &dp_stats);
 if (nla_put(skb, OVS_DP_ATTR_STATS, sizeof(struct ovs_dp_stats), &dp_stats))
  goto nla_put_failure;

 return genlmsg_end(skb, ovs_header);

nla_put_failure:
 genlmsg_cancel(skb, ovs_header);
error:
 return -EMSGSIZE;
}
