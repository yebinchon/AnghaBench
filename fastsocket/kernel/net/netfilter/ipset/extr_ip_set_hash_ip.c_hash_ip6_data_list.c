
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hash_ip6_elem {int ip; } ;


 int IPSET_ATTR_IP ;
 int NLA_PUT_IPADDR6 (struct sk_buff*,int ,int *) ;

__attribute__((used)) static bool
hash_ip6_data_list(struct sk_buff *skb, const struct hash_ip6_elem *data)
{
 NLA_PUT_IPADDR6(skb, IPSET_ATTR_IP, &data->ip);
 return 0;

nla_put_failure:
 return 1;
}
