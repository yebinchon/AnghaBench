
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int pkt_type; } ;
struct dn_skb_cb {int rt_flags; } ;


 unsigned char DN_RT_F_PF ;
 int DN_RT_F_RQR ;
 int DN_RT_F_RTS ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int PACKET_OUTGOING ;
 int dn_rt_finish_output (struct sk_buff*,unsigned char*,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_push (struct sk_buff*,unsigned char*) ;
 struct sk_buff* skb_unshare (struct sk_buff*,int ) ;

__attribute__((used)) static int dn_return_long(struct sk_buff *skb)
{
 struct dn_skb_cb *cb;
 unsigned char *ptr;
 unsigned char *src_addr, *dst_addr;
 unsigned char tmp[ETH_ALEN];


 skb_push(skb, skb->data - skb_network_header(skb));

 if ((skb = skb_unshare(skb, GFP_ATOMIC)) == ((void*)0))
  return NET_RX_DROP;

 cb = DN_SKB_CB(skb);

 ptr = skb->data + 2;


 if (*ptr & DN_RT_F_PF) {
  char padlen = (*ptr & ~DN_RT_F_PF);
  ptr += padlen;
 }

 *ptr++ = (cb->rt_flags & ~DN_RT_F_RQR) | DN_RT_F_RTS;
 ptr += 2;
 dst_addr = ptr;
 ptr += 8;
 src_addr = ptr;
 ptr += 6;
 *ptr = 0;


 memcpy(tmp, src_addr, ETH_ALEN);
 memcpy(src_addr, dst_addr, ETH_ALEN);
 memcpy(dst_addr, tmp, ETH_ALEN);

 skb->pkt_type = PACKET_OUTGOING;
 dn_rt_finish_output(skb, dst_addr, src_addr);
 return NET_RX_SUCCESS;
}
