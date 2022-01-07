
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int winsize_out; } ;
struct x25_sock {scalar_t__ state; int intflag; int condition; unsigned short vs; unsigned short va; int vr; int vl; int ack_queue; TYPE_1__ facilities; TYPE_2__* neighbour; int interrupt_out_queue; } ;
struct sock {int sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {scalar_t__ extended; } ;


 int GFP_ATOMIC ;
 int X25_COND_ACK_PENDING ;
 int X25_COND_PEER_RX_BUSY ;
 int X25_EMODULUS ;
 int X25_SMODULUS ;
 scalar_t__ X25_STATE_3 ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int * skb_peek (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_set_owner_w (struct sk_buff*,struct sock*) ;
 int x25_send_iframe (struct sock*,struct sk_buff*) ;
 struct x25_sock* x25_sk (struct sock*) ;
 int x25_stop_timer (struct sock*) ;
 int x25_transmit_link (struct sk_buff*,TYPE_2__*) ;

void x25_kick(struct sock *sk)
{
 struct sk_buff *skb, *skbn;
 unsigned short start, end;
 int modulus;
 struct x25_sock *x25 = x25_sk(sk);

 if (x25->state != X25_STATE_3)
  return;




 if (!x25->intflag && skb_peek(&x25->interrupt_out_queue) != ((void*)0)) {
  x25->intflag = 1;
  skb = skb_dequeue(&x25->interrupt_out_queue);
  x25_transmit_link(skb, x25->neighbour);
 }

 if (x25->condition & X25_COND_PEER_RX_BUSY)
  return;

 if (!skb_peek(&sk->sk_write_queue))
  return;

 modulus = x25->neighbour->extended ? X25_EMODULUS : X25_SMODULUS;

 start = skb_peek(&x25->ack_queue) ? x25->vs : x25->va;
 end = (x25->va + x25->facilities.winsize_out) % modulus;

 if (start == end)
  return;

 x25->vs = start;






 skb = skb_dequeue(&sk->sk_write_queue);

 do {
  if ((skbn = skb_clone(skb, GFP_ATOMIC)) == ((void*)0)) {
   skb_queue_head(&sk->sk_write_queue, skb);
   break;
  }

  skb_set_owner_w(skbn, sk);




  x25_send_iframe(sk, skbn);

  x25->vs = (x25->vs + 1) % modulus;




  skb_queue_tail(&x25->ack_queue, skb);

 } while (x25->vs != end &&
   (skb = skb_dequeue(&sk->sk_write_queue)) != ((void*)0));

 x25->vl = x25->vr;
 x25->condition &= ~X25_COND_ACK_PENDING;

 x25_stop_timer(sk);
}
