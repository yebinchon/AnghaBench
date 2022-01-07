
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned char* data; int pkt_type; } ;
struct dn_skb_cb {int rt_flags; } ;
typedef int __le16 ;


 int DN_RT_F_RQR ;
 int DN_RT_F_RTS ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int GFP_ATOMIC ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int PACKET_OUTGOING ;
 int dn_rt_finish_output (struct sk_buff*,int *,int *) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_push (struct sk_buff*,unsigned char*) ;
 struct sk_buff* skb_unshare (struct sk_buff*,int ) ;
 int swap (int ,int ) ;

__attribute__((used)) static int dn_return_short(struct sk_buff *skb)
{
 struct dn_skb_cb *cb;
 unsigned char *ptr;
 __le16 *src;
 __le16 *dst;


 skb_push(skb, skb->data - skb_network_header(skb));

 if ((skb = skb_unshare(skb, GFP_ATOMIC)) == ((void*)0))
  return NET_RX_DROP;

 cb = DN_SKB_CB(skb);

 ptr = skb->data + 2;
 *ptr++ = (cb->rt_flags & ~DN_RT_F_RQR) | DN_RT_F_RTS;

 dst = (__le16 *)ptr;
 ptr += 2;
 src = (__le16 *)ptr;
 ptr += 2;
 *ptr = 0;

 swap(*src, *dst);

 skb->pkt_type = PACKET_OUTGOING;
 dn_rt_finish_output(skb, ((void*)0), ((void*)0));
 return NET_RX_SUCCESS;
}
