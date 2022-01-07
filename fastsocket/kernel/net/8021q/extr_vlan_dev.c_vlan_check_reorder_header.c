
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int mac_header; scalar_t__ data; int dev; } ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ ETH_HLEN ;
 scalar_t__ VLAN_ETH_HLEN ;
 int VLAN_FLAG_REORDER_HDR ;
 scalar_t__ VLAN_HLEN ;
 int memmove (scalar_t__,scalar_t__,int) ;
 scalar_t__ skb_cow (struct sk_buff*,int ) ;
 int skb_headroom (struct sk_buff*) ;
 TYPE_1__* vlan_dev_info (int ) ;

__attribute__((used)) static inline struct sk_buff *vlan_check_reorder_header(struct sk_buff *skb)
{
 if (vlan_dev_info(skb->dev)->flags & VLAN_FLAG_REORDER_HDR) {
  if (skb_cow(skb, skb_headroom(skb)) < 0)
   skb = ((void*)0);
  if (skb) {

   memmove(skb->data - ETH_HLEN,
    skb->data - VLAN_ETH_HLEN, 12);
   skb->mac_header += VLAN_HLEN;
  }
 }

 return skb;
}
