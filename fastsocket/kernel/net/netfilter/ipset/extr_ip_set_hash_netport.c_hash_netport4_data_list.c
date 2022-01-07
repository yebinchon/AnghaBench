
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hash_netport4_elem {int proto; int cidr; int port; int ip; } ;


 int IPSET_ATTR_CIDR ;
 int IPSET_ATTR_IP ;
 int IPSET_ATTR_PORT ;
 int IPSET_ATTR_PROTO ;
 int NLA_PUT_IPADDR4 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_NET16 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool
hash_netport4_data_list(struct sk_buff *skb,
   const struct hash_netport4_elem *data)
{
 NLA_PUT_IPADDR4(skb, IPSET_ATTR_IP, data->ip);
 NLA_PUT_NET16(skb, IPSET_ATTR_PORT, data->port);
 NLA_PUT_U8(skb, IPSET_ATTR_CIDR, data->cidr);
 NLA_PUT_U8(skb, IPSET_ATTR_PROTO, data->proto);
 return 0;

nla_put_failure:
 return 1;
}
