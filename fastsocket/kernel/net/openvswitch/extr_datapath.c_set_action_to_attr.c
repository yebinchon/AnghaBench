
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int OVS_ACTION_ATTR_SET ;

 struct nlattr* nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;
 int nla_put (struct sk_buff*,int ,int ,struct nlattr const*) ;
 int nla_type (struct nlattr const*) ;
 int ovs_ipv4_tun_to_nlattr (struct sk_buff*,struct nlattr*) ;

__attribute__((used)) static int set_action_to_attr(const struct nlattr *a, struct sk_buff *skb)
{
 const struct nlattr *ovs_key = nla_data(a);
 int key_type = nla_type(ovs_key);
 struct nlattr *start;
 int err;

 switch (key_type) {
 case 128:
  start = nla_nest_start(skb, OVS_ACTION_ATTR_SET);
  if (!start)
   return -EMSGSIZE;

  err = ovs_ipv4_tun_to_nlattr(skb, nla_data(ovs_key));
  if (err)
   return err;
  nla_nest_end(skb, start);
  break;
 default:
  if (nla_put(skb, OVS_ACTION_ATTR_SET, nla_len(a), ovs_key))
   return -EMSGSIZE;
  break;
 }

 return 0;
}
