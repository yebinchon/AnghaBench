
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {int actions_len; } ;
struct ovs_header {int dummy; } ;
struct ovs_flow_stats {int dummy; } ;


 size_t NLMSG_ALIGN (int) ;
 int key_attr_size () ;
 size_t nla_total_size (int) ;

__attribute__((used)) static size_t ovs_flow_cmd_msg_size(const struct sw_flow_actions *acts)
{
 return NLMSG_ALIGN(sizeof(struct ovs_header))
  + nla_total_size(key_attr_size())
  + nla_total_size(sizeof(struct ovs_flow_stats))
  + nla_total_size(1)
  + nla_total_size(8)
  + nla_total_size(acts->actions_len);
}
