
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tun_key ;
struct sw_flow_actions {int dummy; } ;
struct ovs_key_ipv4_tunnel {int dummy; } ;
struct nlattr {int dummy; } ;


 int OVS_ACTION_ATTR_SET ;
 int OVS_KEY_ATTR_IPV4_TUNNEL ;
 int add_action (struct sw_flow_actions**,int ,struct ovs_key_ipv4_tunnel*,int) ;
 int add_nested_action_end (struct sw_flow_actions*,int) ;
 int add_nested_action_start (struct sw_flow_actions**,int ) ;
 int nla_data (struct nlattr const*) ;
 int ovs_ipv4_tun_from_nlattr (int ,struct ovs_key_ipv4_tunnel*) ;

__attribute__((used)) static int validate_and_copy_set_tun(const struct nlattr *attr,
         struct sw_flow_actions **sfa)
{
 struct ovs_key_ipv4_tunnel tun_key;
 int err, start;

 err = ovs_ipv4_tun_from_nlattr(nla_data(attr), &tun_key);
 if (err)
  return err;

 start = add_nested_action_start(sfa, OVS_ACTION_ATTR_SET);
 if (start < 0)
  return start;

 err = add_action(sfa, OVS_KEY_ATTR_IPV4_TUNNEL, &tun_key, sizeof(tun_key));
 add_nested_action_end(*sfa, start);

 return err;
}
