
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hash_ipportip4_elem {int proto; int port; int ip2; int ip; } ;


 int IPSET_ATTR_IP ;
 int IPSET_ATTR_IP2 ;
 int IPSET_ATTR_PORT ;
 int IPSET_ATTR_PROTO ;
 int NLA_PUT_IPADDR4 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_NET16 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static bool
hash_ipportip4_data_list(struct sk_buff *skb,
         const struct hash_ipportip4_elem *data)
{
 NLA_PUT_IPADDR4(skb, IPSET_ATTR_IP, data->ip);
 NLA_PUT_IPADDR4(skb, IPSET_ATTR_IP2, data->ip2);
 NLA_PUT_NET16(skb, IPSET_ATTR_PORT, data->port);
 NLA_PUT_U8(skb, IPSET_ATTR_PROTO, data->proto);
 return 0;

nla_put_failure:
 return 1;
}
