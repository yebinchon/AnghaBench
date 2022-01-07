
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_write_queue; } ;
struct sk_buff {int ip_summed; scalar_t__ csum; scalar_t__ network_header; scalar_t__ transport_header; } ;
struct TYPE_3__ {int addr; } ;
struct rt6_info {TYPE_1__ rt6i_dst; } ;
struct frag_hdr {int identification; } ;
struct TYPE_4__ {int gso_size; int ip6_frag_id; int gso_type; } ;


 int CHECKSUM_PARTIAL ;
 int ENOMEM ;
 unsigned int MSG_DONTWAIT ;
 int SKB_GSO_UDP ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int ipv6_select_ident (struct frag_hdr*,int *) ;
 int skb_append_datato_frags (struct sock*,struct sk_buff*,int (*) (void*,char*,int,int,int,struct sk_buff*),void*,int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 struct sk_buff* skb_peek_tail (int *) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,unsigned int,int*) ;

__attribute__((used)) static inline int ip6_ufo_append_data(struct sock *sk,
   int getfrag(void *from, char *to, int offset, int len,
   int odd, struct sk_buff *skb),
   void *from, int length, int hh_len, int fragheaderlen,
   int transhdrlen, int mtu,unsigned int flags,
   struct rt6_info *rt)

{
 struct sk_buff *skb;
 struct frag_hdr fhdr;
 int err;





 if ((skb = skb_peek_tail(&sk->sk_write_queue)) == ((void*)0)) {
  skb = sock_alloc_send_skb(sk,
   hh_len + fragheaderlen + transhdrlen + 20,
   (flags & MSG_DONTWAIT), &err);
  if (skb == ((void*)0))
   return -ENOMEM;


  skb_reserve(skb, hh_len);


  skb_put(skb,fragheaderlen + transhdrlen);


  skb_reset_network_header(skb);


  skb->transport_header = skb->network_header + fragheaderlen;

  skb->csum = 0;

  __skb_queue_tail(&sk->sk_write_queue, skb);
 } else if (skb_is_gso(skb)) {
  goto append;
 }

 skb->ip_summed = CHECKSUM_PARTIAL;




 skb_shinfo(skb)->gso_size = (mtu - fragheaderlen -
         sizeof(struct frag_hdr)) & ~7;
 skb_shinfo(skb)->gso_type = SKB_GSO_UDP;
 ipv6_select_ident(&fhdr, &rt->rt6i_dst.addr);
 skb_shinfo(skb)->ip6_frag_id = fhdr.identification;

append:
 return skb_append_datato_frags(sk, skb, getfrag, from,
           (length - transhdrlen));
}
