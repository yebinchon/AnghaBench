
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sctp_ulpq {int reasm; } ;
struct sctp_ulpevent {int msg_flags; } ;


 int MSG_EOR ;
 int __skb_queue_tail (struct sk_buff_head*,int ) ;
 int sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpq_order (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpq_retrieve_reassembled (struct sctp_ulpq*) ;
 int sctp_ulpq_tail_event (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 scalar_t__ skb_queue_empty (int *) ;
 int skb_queue_head_init (struct sk_buff_head*) ;

__attribute__((used)) static void sctp_ulpq_reasm_drain(struct sctp_ulpq *ulpq)
{
 struct sctp_ulpevent *event = ((void*)0);
 struct sk_buff_head temp;

 if (skb_queue_empty(&ulpq->reasm))
  return;

 while ((event = sctp_ulpq_retrieve_reassembled(ulpq)) != ((void*)0)) {

  if ((event) && (event->msg_flags & MSG_EOR)){
   skb_queue_head_init(&temp);
   __skb_queue_tail(&temp, sctp_event2skb(event));

   event = sctp_ulpq_order(ulpq, event);
  }




  if (event)
   sctp_ulpq_tail_event(ulpq, event);
 }
}
