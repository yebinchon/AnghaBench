
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
typedef int __be16 ;
struct TYPE_2__ {int h_vlan_encapsulated_proto; } ;


 TYPE_1__* vlan_eth_hdr (struct sk_buff const*) ;

__attribute__((used)) static inline __be16 vlan_proto(const struct sk_buff *skb)
{
 return vlan_eth_hdr(skb)->h_vlan_encapsulated_proto;
}
