
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int hard_header_len; } ;
typedef int ax25_digi ;
typedef int ax25_address ;


 char AX25_DM ;
 int AX25_MODULUS ;
 char AX25_PF ;
 int AX25_RESPONSE ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int ax25_addr_build (char*,int *,int *,int *,int ,int ) ;
 int ax25_addr_size (int *) ;
 int ax25_digi_invert (int *,int *) ;
 int ax25_queue_xmit (struct sk_buff*,struct net_device*) ;
 char* skb_push (struct sk_buff*,int ) ;
 char* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;

void ax25_return_dm(struct net_device *dev, ax25_address *src, ax25_address *dest, ax25_digi *digi)
{
 struct sk_buff *skb;
 char *dptr;
 ax25_digi retdigi;

 if (dev == ((void*)0))
  return;

 if ((skb = alloc_skb(dev->hard_header_len + 1, GFP_ATOMIC)) == ((void*)0))
  return;

 skb_reserve(skb, dev->hard_header_len);
 skb_reset_network_header(skb);

 ax25_digi_invert(digi, &retdigi);

 dptr = skb_put(skb, 1);

 *dptr = AX25_DM | AX25_PF;




 dptr = skb_push(skb, ax25_addr_size(digi));
 dptr += ax25_addr_build(dptr, dest, src, &retdigi, AX25_RESPONSE, AX25_MODULUS);

 ax25_queue_xmit(skb, dev);
}
