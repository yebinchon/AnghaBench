
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sw_flow {int dummy; } ;
struct sk_buff {int dummy; } ;
struct datapath {int dummy; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 struct sk_buff* ovs_flow_cmd_alloc_info (struct sw_flow*) ;
 int ovs_flow_cmd_fill_info (struct sw_flow*,struct datapath*,struct sk_buff*,int ,int ,int ,int ) ;

__attribute__((used)) static struct sk_buff *ovs_flow_cmd_build_info(struct sw_flow *flow,
            struct datapath *dp,
            u32 pid, u32 seq, u8 cmd)
{
 struct sk_buff *skb;
 int retval;

 skb = ovs_flow_cmd_alloc_info(flow);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 retval = ovs_flow_cmd_fill_info(flow, dp, skb, pid, seq, 0, cmd);
 BUG_ON(retval < 0);
 return skb;
}
