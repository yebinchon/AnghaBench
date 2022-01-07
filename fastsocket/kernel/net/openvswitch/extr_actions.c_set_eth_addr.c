
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ovs_key_ethernet {int eth_dst; int eth_src; } ;
struct TYPE_4__ {int h_dest; int h_source; } ;


 int ETH_ALEN ;
 int ETH_HLEN ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 int make_writable (struct sk_buff*,int ) ;
 int memcpy (int ,int ,int) ;
 int ovs_skb_postpush_rcsum (struct sk_buff*,TYPE_1__*,int) ;
 int skb_postpull_rcsum (struct sk_buff*,TYPE_1__*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_eth_addr(struct sk_buff *skb,
   const struct ovs_key_ethernet *eth_key)
{
 int err;
 err = make_writable(skb, ETH_HLEN);
 if (unlikely(err))
  return err;

 skb_postpull_rcsum(skb, eth_hdr(skb), ETH_ALEN * 2);

 memcpy(eth_hdr(skb)->h_source, eth_key->eth_src, ETH_ALEN);
 memcpy(eth_hdr(skb)->h_dest, eth_key->eth_dst, ETH_ALEN);

 ovs_skb_postpush_rcsum(skb, eth_hdr(skb), ETH_ALEN * 2);

 return 0;
}
