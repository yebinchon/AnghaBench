
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int * data; } ;
struct nr_sock {int condition; int vr; int vl; int va; int ack_queue; } ;


 int GFP_ATOMIC ;
 int NR_CHOKE_FLAG ;
 int NR_COND_ACK_PENDING ;
 int NR_COND_OWN_RX_BUSY ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_stop_t1timer (struct sock*) ;
 int nr_transmit_buffer (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 struct sk_buff* skb_peek (int *) ;

void nr_send_nak_frame(struct sock *sk)
{
 struct sk_buff *skb, *skbn;
 struct nr_sock *nr = nr_sk(sk);

 if ((skb = skb_peek(&nr->ack_queue)) == ((void*)0))
  return;

 if ((skbn = skb_clone(skb, GFP_ATOMIC)) == ((void*)0))
  return;

 skbn->data[2] = nr->va;
 skbn->data[3] = nr->vr;

 if (nr->condition & NR_COND_OWN_RX_BUSY)
  skbn->data[4] |= NR_CHOKE_FLAG;

 nr_transmit_buffer(sk, skbn);

 nr->condition &= ~NR_COND_ACK_PENDING;
 nr->vl = nr->vr;

 nr_stop_t1timer(sk);
}
