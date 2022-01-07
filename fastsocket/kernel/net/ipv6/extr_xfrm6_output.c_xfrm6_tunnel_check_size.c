
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int dev; int local_df; } ;
struct dst_entry {int dev; } ;


 int EMSGSIZE ;
 int ICMPV6_PKT_TOOBIG ;
 int IPV6_MIN_MTU ;
 int dst_mtu (struct dst_entry*) ;
 int icmpv6_send (struct sk_buff*,int ,int ,int,int ) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static int xfrm6_tunnel_check_size(struct sk_buff *skb)
{
 int mtu, ret = 0;
 struct dst_entry *dst = skb_dst(skb);

 mtu = dst_mtu(dst);
 if (mtu < IPV6_MIN_MTU)
  mtu = IPV6_MIN_MTU;

 if (!skb->local_df && skb->len > mtu) {
  skb->dev = dst->dev;
  icmpv6_send(skb, ICMPV6_PKT_TOOBIG, 0, mtu, skb->dev);
  ret = -EMSGSIZE;
 }

 return ret;
}
