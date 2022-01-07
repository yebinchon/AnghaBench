
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ protocol; } ;


 int ETH_P_8021Q ;
 int VLAN_HLEN ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static inline unsigned packet_length(const struct sk_buff *skb)
{
 return skb->len - (skb->protocol == htons(ETH_P_8021Q) ? VLAN_HLEN : 0);
}
