
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; scalar_t__ protocol; } ;


 unsigned int ETH_HLEN ;
 int ETH_P_8021Q ;
 scalar_t__ VLAN_HLEN ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static unsigned packet_length(const struct sk_buff *skb)
{
 unsigned length = skb->len - ETH_HLEN;

 if (skb->protocol == htons(ETH_P_8021Q))
  length -= VLAN_HLEN;

 return length;
}
