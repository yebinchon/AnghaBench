
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct nr_sock {scalar_t__ fraglen; int frag_queue; } ;


 int GFP_ATOMIC ;
 scalar_t__ NR_NETWORK_LEN ;
 scalar_t__ NR_TRANSPORT_LEN ;
 struct sk_buff* alloc_skb (scalar_t__,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_start_idletimer (struct sock*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,scalar_t__) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static int nr_queue_rx_frame(struct sock *sk, struct sk_buff *skb, int more)
{
 struct sk_buff *skbo, *skbn = skb;
 struct nr_sock *nr = nr_sk(sk);

 skb_pull(skb, NR_NETWORK_LEN + NR_TRANSPORT_LEN);

 nr_start_idletimer(sk);

 if (more) {
  nr->fraglen += skb->len;
  skb_queue_tail(&nr->frag_queue, skb);
  return 0;
 }

 if (!more && nr->fraglen > 0) {
  nr->fraglen += skb->len;
  skb_queue_tail(&nr->frag_queue, skb);

  if ((skbn = alloc_skb(nr->fraglen, GFP_ATOMIC)) == ((void*)0))
   return 1;

  skb_reset_transport_header(skbn);

  while ((skbo = skb_dequeue(&nr->frag_queue)) != ((void*)0)) {
   skb_copy_from_linear_data(skbo,
        skb_put(skbn, skbo->len),
        skbo->len);
   kfree_skb(skbo);
  }

  nr->fraglen = 0;
 }

 return sock_queue_rcv_skb(sk, skbn);
}
