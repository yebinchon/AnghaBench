
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; int protocol; } ;
struct net_device {int type; } ;


 int ETH_P_802_2 ;
 int GFP_ATOMIC ;
 scalar_t__ LLC_PDU_TYPE_U ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int htons (int ) ;
 scalar_t__ llc_mac_header_len (int ) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;

struct sk_buff *llc_alloc_frame(struct sock *sk, struct net_device *dev,
    u8 type, u32 data_size)
{
 int hlen = type == LLC_PDU_TYPE_U ? 3 : 4;
 struct sk_buff *skb;

 hlen += llc_mac_header_len(dev->type);
 skb = alloc_skb(hlen + data_size, GFP_ATOMIC);

 if (skb) {
  skb_reset_mac_header(skb);
  skb_reserve(skb, hlen);
  skb_reset_network_header(skb);
  skb_reset_transport_header(skb);
  skb->protocol = htons(ETH_P_802_2);
  skb->dev = dev;
  if (sk != ((void*)0))
   skb_set_owner_w(skb, sk);
 }
 return skb;
}
