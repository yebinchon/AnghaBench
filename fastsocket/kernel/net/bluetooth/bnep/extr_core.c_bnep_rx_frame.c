
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct sk_buff {int len; int data; int protocol; int ip_summed; } ;
struct TYPE_4__ {int rx_errors; int rx_packets; int rx_dropped; int rx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_5__ {void* h_proto; struct TYPE_5__* h_source; struct TYPE_5__* h_dest; } ;
struct bnep_session {TYPE_2__ eh; struct net_device* dev; } ;
typedef int __be16 ;





 size_t BNEP_CONTROL ;
 size_t BNEP_EXT_HEADER ;

 size_t BNEP_RX_TYPES ;
 size_t BNEP_TYPE_MASK ;
 int CHECKSUM_NONE ;
 int ENOMEM ;
 int ETH_ALEN ;
 int ETH_HLEN ;
 int GFP_KERNEL ;
 int* __bnep_rx_hlen ;
 scalar_t__ __skb_put (struct sk_buff*,int) ;
 struct sk_buff* alloc_skb (int,int ) ;
 int bnep_rx_control (struct bnep_session*,int,int) ;
 scalar_t__ bnep_rx_extension (struct bnep_session*,struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 void* get_unaligned (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (scalar_t__,TYPE_2__*,int) ;
 int netif_rx_ni (struct sk_buff*) ;
 int ntohs (void*) ;
 int put_unaligned (void*,int *) ;
 int skb_copy_from_linear_data (struct sk_buff*,scalar_t__,int) ;
 TYPE_2__* skb_mac_header (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static inline int bnep_rx_frame(struct bnep_session *s, struct sk_buff *skb)
{
 struct net_device *dev = s->dev;
 struct sk_buff *nskb;
 u8 type;

 dev->stats.rx_bytes += skb->len;

 type = *(u8 *) skb->data; skb_pull(skb, 1);

 if ((type & BNEP_TYPE_MASK) > BNEP_RX_TYPES)
  goto badframe;

 if ((type & BNEP_TYPE_MASK) == BNEP_CONTROL) {
  bnep_rx_control(s, skb->data, skb->len);
  kfree_skb(skb);
  return 0;
 }

 skb_reset_mac_header(skb);


 if (!skb_pull(skb, __bnep_rx_hlen[type & BNEP_TYPE_MASK]))
  goto badframe;

 s->eh.h_proto = get_unaligned((__be16 *) (skb->data - 2));

 if (type & BNEP_EXT_HEADER) {
  if (bnep_rx_extension(s, skb) < 0)
   goto badframe;
 }


 if (ntohs(s->eh.h_proto) == 0x8100) {
  if (!skb_pull(skb, 4))
   goto badframe;
  s->eh.h_proto = get_unaligned((__be16 *) (skb->data - 2));
 }



 nskb = alloc_skb(2 + ETH_HLEN + skb->len, GFP_KERNEL);
 if (!nskb) {
  dev->stats.rx_dropped++;
  kfree_skb(skb);
  return -ENOMEM;
 }
 skb_reserve(nskb, 2);


 switch (type & BNEP_TYPE_MASK) {
 case 131:
  memcpy(__skb_put(nskb, ETH_HLEN), &s->eh, ETH_HLEN);
  break;

 case 129:
  memcpy(__skb_put(nskb, ETH_ALEN), s->eh.h_dest, ETH_ALEN);
  memcpy(__skb_put(nskb, ETH_ALEN), skb_mac_header(skb), ETH_ALEN);
  put_unaligned(s->eh.h_proto, (__be16 *) __skb_put(nskb, 2));
  break;

 case 130:
  memcpy(__skb_put(nskb, ETH_ALEN), skb_mac_header(skb),
         ETH_ALEN);
  memcpy(__skb_put(nskb, ETH_ALEN + 2), s->eh.h_source,
         ETH_ALEN + 2);
  break;

 case 128:
  memcpy(__skb_put(nskb, ETH_ALEN * 2), skb_mac_header(skb),
         ETH_ALEN * 2);
  put_unaligned(s->eh.h_proto, (__be16 *) __skb_put(nskb, 2));
  break;
 }

 skb_copy_from_linear_data(skb, __skb_put(nskb, skb->len), skb->len);
 kfree_skb(skb);

 dev->stats.rx_packets++;
 nskb->ip_summed = CHECKSUM_NONE;
 nskb->protocol = eth_type_trans(nskb, dev);
 netif_rx_ni(nskb);
 return 0;

badframe:
 dev->stats.rx_errors++;
 kfree_skb(skb);
 return 0;
}
