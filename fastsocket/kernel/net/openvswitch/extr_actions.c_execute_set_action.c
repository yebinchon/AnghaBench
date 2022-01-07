
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {void* mark; void* priority; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int tun_key; } ;


 TYPE_1__* OVS_CB (struct sk_buff*) ;
 int nla_data (struct nlattr const*) ;
 void* nla_get_u32 (struct nlattr const*) ;
 int nla_type (struct nlattr const*) ;
 int set_eth_addr (struct sk_buff*,int ) ;
 int set_ipv4 (struct sk_buff*,int ) ;
 int set_ipv6 (struct sk_buff*,int ) ;
 int set_tcp (struct sk_buff*,int ) ;
 int set_udp (struct sk_buff*,int ) ;

__attribute__((used)) static int execute_set_action(struct sk_buff *skb,
     const struct nlattr *nested_attr)
{
 int err = 0;

 switch (nla_type(nested_attr)) {
 case 131:
  skb->priority = nla_get_u32(nested_attr);
  break;

 case 130:
  skb->mark = nla_get_u32(nested_attr);
  break;

 case 133:
  OVS_CB(skb)->tun_key = nla_data(nested_attr);
  break;

 case 135:
  err = set_eth_addr(skb, nla_data(nested_attr));
  break;

 case 134:
  err = set_ipv4(skb, nla_data(nested_attr));
  break;

 case 132:
  err = set_ipv6(skb, nla_data(nested_attr));
  break;

 case 129:
  err = set_tcp(skb, nla_data(nested_attr));
  break;

 case 128:
  err = set_udp(skb, nla_data(nested_attr));
  break;
 }

 return err;
}
