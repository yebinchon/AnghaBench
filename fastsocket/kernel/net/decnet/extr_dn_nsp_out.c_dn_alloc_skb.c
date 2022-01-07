
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int pkt_type; int protocol; } ;
typedef int gfp_t ;


 int ETH_P_DNA_RT ;
 int PACKET_OUTGOING ;
 struct sk_buff* alloc_skb (int,int ) ;
 int htons (int ) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;

struct sk_buff *dn_alloc_skb(struct sock *sk, int size, gfp_t pri)
{
 struct sk_buff *skb;
 int hdr = 64;

 if ((skb = alloc_skb(size + hdr, pri)) == ((void*)0))
  return ((void*)0);

 skb->protocol = htons(ETH_P_DNA_RT);
 skb->pkt_type = PACKET_OUTGOING;

 if (sk)
  skb_set_owner_w(skb, sk);

 skb_reserve(skb, hdr);

 return skb;
}
