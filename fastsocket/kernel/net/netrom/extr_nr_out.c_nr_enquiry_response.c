
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nr_sock {int condition; int vr; int vl; int reseq_queue; } ;


 int NR_CHOKE_FLAG ;
 int NR_COND_ACK_PENDING ;
 int NR_COND_OWN_RX_BUSY ;
 int NR_INFOACK ;
 int NR_NAK_FLAG ;
 struct nr_sock* nr_sk (struct sock*) ;
 int nr_write_internal (struct sock*,int) ;
 int * skb_peek (int *) ;

void nr_enquiry_response(struct sock *sk)
{
 struct nr_sock *nr = nr_sk(sk);
 int frametype = NR_INFOACK;

 if (nr->condition & NR_COND_OWN_RX_BUSY) {
  frametype |= NR_CHOKE_FLAG;
 } else {
  if (skb_peek(&nr->reseq_queue) != ((void*)0))
   frametype |= NR_NAK_FLAG;
 }

 nr_write_internal(sk, frametype);

 nr->vl = nr->vr;
 nr->condition &= ~NR_COND_ACK_PENDING;
}
