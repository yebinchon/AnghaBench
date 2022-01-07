
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int * data; } ;


 int AX25_ADDR_LEN ;
 unsigned char AX25_CBIT ;
 unsigned char AX25_EBIT ;
 unsigned char AX25_SSSID_SPARE ;
 int GFP_ATOMIC ;
 int NR_NETWORK_LEN ;
 int NR_TRANSPORT_LEN ;
 struct sk_buff* alloc_skb (int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nr_route_frame (struct sk_buff*,int *) ;
 int skb_copy_from_linear_data (struct sk_buff*,unsigned char*,int ) ;
 int skb_copy_from_linear_data_offset (struct sk_buff*,int,unsigned char*,int ) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 int sysctl_netrom_network_ttl_initialiser ;

void __nr_transmit_reply(struct sk_buff *skb, int mine, unsigned char cmdflags)
{
 struct sk_buff *skbn;
 unsigned char *dptr;
 int len;

 len = NR_NETWORK_LEN + NR_TRANSPORT_LEN + 1;

 if ((skbn = alloc_skb(len, GFP_ATOMIC)) == ((void*)0))
  return;

 skb_reserve(skbn, 0);

 dptr = skb_put(skbn, NR_NETWORK_LEN + NR_TRANSPORT_LEN);

 skb_copy_from_linear_data_offset(skb, 7, dptr, AX25_ADDR_LEN);
 dptr[6] &= ~AX25_CBIT;
 dptr[6] &= ~AX25_EBIT;
 dptr[6] |= AX25_SSSID_SPARE;
 dptr += AX25_ADDR_LEN;

 skb_copy_from_linear_data(skb, dptr, AX25_ADDR_LEN);
 dptr[6] &= ~AX25_CBIT;
 dptr[6] |= AX25_EBIT;
 dptr[6] |= AX25_SSSID_SPARE;
 dptr += AX25_ADDR_LEN;

 *dptr++ = sysctl_netrom_network_ttl_initialiser;

 if (mine) {
  *dptr++ = 0;
  *dptr++ = 0;
  *dptr++ = skb->data[15];
  *dptr++ = skb->data[16];
 } else {
  *dptr++ = skb->data[15];
  *dptr++ = skb->data[16];
  *dptr++ = 0;
  *dptr++ = 0;
 }

 *dptr++ = cmdflags;
 *dptr++ = 0;

 if (!nr_route_frame(skbn, ((void*)0)))
  kfree_skb(skbn);
}
