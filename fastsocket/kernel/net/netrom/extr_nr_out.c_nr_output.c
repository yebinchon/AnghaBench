
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_write_queue; } ;
struct sk_buff {int len; int * data; } ;


 int NR_MAX_PACKET_SIZE ;
 int NR_MORE_FLAG ;
 int NR_TRANSPORT_LEN ;
 int kfree_skb (struct sk_buff*) ;
 int nr_kick (struct sock*) ;
 int skb_copy_from_linear_data (struct sk_buff*,unsigned char*,int) ;
 int skb_copy_to_linear_data (struct sk_buff*,unsigned char*,int) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 unsigned char* skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,int) ;
 struct sk_buff* sock_alloc_send_skb (struct sock*,int,int ,int*) ;

void nr_output(struct sock *sk, struct sk_buff *skb)
{
 struct sk_buff *skbn;
 unsigned char transport[NR_TRANSPORT_LEN];
 int err, frontlen, len;

 if (skb->len - NR_TRANSPORT_LEN > NR_MAX_PACKET_SIZE) {

  skb_copy_from_linear_data(skb, transport, NR_TRANSPORT_LEN);
  skb_pull(skb, NR_TRANSPORT_LEN);

  frontlen = skb_headroom(skb);

  while (skb->len > 0) {
   if ((skbn = sock_alloc_send_skb(sk, frontlen + NR_MAX_PACKET_SIZE, 0, &err)) == ((void*)0))
    return;

   skb_reserve(skbn, frontlen);

   len = (NR_MAX_PACKET_SIZE > skb->len) ? skb->len : NR_MAX_PACKET_SIZE;


   skb_copy_from_linear_data(skb, skb_put(skbn, len), len);
   skb_pull(skb, len);


   skb_push(skbn, NR_TRANSPORT_LEN);
   skb_copy_to_linear_data(skbn, transport,
      NR_TRANSPORT_LEN);
   if (skb->len > 0)
    skbn->data[4] |= NR_MORE_FLAG;

   skb_queue_tail(&sk->sk_write_queue, skbn);
  }

  kfree_skb(skb);
 } else {
  skb_queue_tail(&sk->sk_write_queue, skb);
 }

 nr_kick(sk);
}
