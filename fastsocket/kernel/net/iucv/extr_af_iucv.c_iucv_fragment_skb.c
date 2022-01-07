
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_rcvbuf; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_2__ {int backlog_skb_q; } ;


 scalar_t__ CB_TRGCLS (struct sk_buff*) ;
 int CB_TRGCLS_LEN ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 struct sk_buff* alloc_skb (int,int) ;
 TYPE_1__* iucv_sk (struct sock*) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static int iucv_fragment_skb(struct sock *sk, struct sk_buff *skb, int len)
{
 int dataleft, size, copied = 0;
 struct sk_buff *nskb;

 dataleft = len;
 while (dataleft) {
  if (dataleft >= sk->sk_rcvbuf / 4)
   size = sk->sk_rcvbuf / 4;
  else
   size = dataleft;

  nskb = alloc_skb(size, GFP_ATOMIC | GFP_DMA);
  if (!nskb)
   return -ENOMEM;


  memcpy(CB_TRGCLS(nskb), CB_TRGCLS(skb), CB_TRGCLS_LEN);


  memcpy(nskb->data, skb->data + copied, size);
  copied += size;
  dataleft -= size;

  skb_reset_transport_header(nskb);
  skb_reset_network_header(nskb);
  nskb->len = size;

  skb_queue_tail(&iucv_sk(sk)->backlog_skb_q, nskb);
 }

 return 0;
}
