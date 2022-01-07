
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int * data; } ;
struct nr_sock {int condition; int vr; int vs; } ;


 int NR_CHOKE_FLAG ;
 int NR_COND_OWN_RX_BUSY ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_start_idletimer (struct sock*) ;
 int nr_transmit_buffer (struct sock*,struct sk_buff*) ;

__attribute__((used)) static void nr_send_iframe(struct sock *sk, struct sk_buff *skb)
{
 struct nr_sock *nr = nr_sk(sk);

 if (skb == ((void*)0))
  return;

 skb->data[2] = nr->vs;
 skb->data[3] = nr->vr;

 if (nr->condition & NR_COND_OWN_RX_BUSY)
  skb->data[4] |= NR_CHOKE_FLAG;

 nr_start_idletimer(sk);

 nr_transmit_buffer(sk, skb);
}
