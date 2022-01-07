
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {int dummy; } ;
struct sw_flow {int sf_acts; } ;
struct sk_buff {int dummy; } ;


 int GFP_KERNEL ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 int ovs_flow_cmd_msg_size (struct sw_flow_actions const*) ;
 struct sw_flow_actions* ovsl_dereference (int ) ;

__attribute__((used)) static struct sk_buff *ovs_flow_cmd_alloc_info(struct sw_flow *flow)
{
 const struct sw_flow_actions *sf_acts;

 sf_acts = ovsl_dereference(flow->sf_acts);

 return genlmsg_new(ovs_flow_cmd_msg_size(sf_acts), GFP_KERNEL);
}
