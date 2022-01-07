
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;
struct net_device {int flags; unsigned int mtu; unsigned int hard_header_len; } ;


 int IFF_UP ;
 unsigned int VLAN_HLEN ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;

__attribute__((used)) static inline bool is_skb_forwardable(struct net_device *dev,
          struct sk_buff *skb)
{
 unsigned int len;

 if (!(dev->flags & IFF_UP))
  return 0;

 len = dev->mtu + dev->hard_header_len + VLAN_HLEN;
 if (skb->len <= len)
  return 1;




 if (skb_is_gso(skb))
  return 1;

 return 0;
}
