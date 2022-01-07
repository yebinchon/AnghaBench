
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int ip_summed; scalar_t__ csum; scalar_t__ network_header; scalar_t__ transport_header; } ;
struct TYPE_2__ {int gso_size; int gso_type; } ;


 int CHECKSUM_PARTIAL ;
 unsigned int MSG_DONTWAIT ;
 int SKB_GSO_UDP ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int skb_append_datato_frags (struct sock*,struct sk_buff*,int (*) (void*,char*,int,int,int,struct sk_buff*),void*,int) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 struct sk_buff* skb_peek_tail (struct sk_buff_head*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,unsigned int,int*) ;

__attribute__((used)) static inline int ip_ufo_append_data(struct sock *sk,
   struct sk_buff_head *queue,
   int getfrag(void *from, char *to, int offset, int len,
          int odd, struct sk_buff *skb),
   void *from, int length, int hh_len, int fragheaderlen,
   int transhdrlen, int maxfraglen, unsigned int flags)
{
 struct sk_buff *skb;
 int err;





 if ((skb = skb_peek_tail(queue)) == ((void*)0)) {
  skb = sock_alloc_send_skb(sk,
   hh_len + fragheaderlen + transhdrlen + 20,
   (flags & MSG_DONTWAIT), &err);

  if (skb == ((void*)0))
   return err;


  skb_reserve(skb, hh_len);


  skb_put(skb, fragheaderlen + transhdrlen);


  skb_reset_network_header(skb);


  skb->transport_header = skb->network_header + fragheaderlen;

  skb->csum = 0;


  __skb_queue_tail(queue, skb);
 } else if (skb_is_gso(skb)) {
  goto append;
 }

 skb->ip_summed = CHECKSUM_PARTIAL;

 skb_shinfo(skb)->gso_size = maxfraglen - fragheaderlen;
 skb_shinfo(skb)->gso_type = SKB_GSO_UDP;

append:
 return skb_append_datato_frags(sk, skb, getfrag, from,
           (length - transhdrlen));
}
