
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff_head {int dummy; } ;
struct sock {int sk_shutdown; int (* sk_data_ready ) (struct sock*,int ) ;struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {scalar_t__ prev; } ;
struct sctp_ulpq {scalar_t__ pd_mode; TYPE_2__* asoc; } ;
struct sctp_ulpevent {int msg_flags; } ;
struct TYPE_6__ {struct sk_buff_head pd_lobby; scalar_t__ frag_interleave; int pd_mode; int subscribe; } ;
struct TYPE_4__ {struct sock* sk; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int MSG_EOR ;
 int MSG_NOTIFICATION ;
 int RCV_SHUTDOWN ;
 int SCTP_DATA_FRAG_MASK ;
 int SCTP_DATA_NOT_FRAG ;
 int SOCK_DEAD ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 scalar_t__ atomic_read (int *) ;
 struct sk_buff* sctp_event2skb (struct sctp_ulpevent*) ;
 int sctp_queue_purge_ulpevents (struct sk_buff_head*) ;
 TYPE_3__* sctp_sk (struct sock*) ;
 int sctp_skb_list_tail (struct sk_buff_head*,struct sk_buff_head*) ;
 int sctp_ulpevent_free (struct sctp_ulpevent*) ;
 int sctp_ulpevent_is_enabled (struct sctp_ulpevent*,int *) ;
 int sctp_ulpq_clear_pd (struct sctp_ulpq*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*,int ) ;

int sctp_ulpq_tail_event(struct sctp_ulpq *ulpq, struct sctp_ulpevent *event)
{
 struct sock *sk = ulpq->asoc->base.sk;
 struct sk_buff_head *queue, *skb_list;
 struct sk_buff *skb = sctp_event2skb(event);
 int clear_pd = 0;

 skb_list = (struct sk_buff_head *) skb->prev;




 if (sock_flag(sk, SOCK_DEAD) || (sk->sk_shutdown & RCV_SHUTDOWN))
  goto out_free;


 if (!sctp_ulpevent_is_enabled(event, &sctp_sk(sk)->subscribe))
  goto out_free;






 if (atomic_read(&sctp_sk(sk)->pd_mode) == 0) {
  queue = &sk->sk_receive_queue;
 } else {
  if (ulpq->pd_mode) {





   if ((event->msg_flags & MSG_NOTIFICATION) ||
       (SCTP_DATA_NOT_FRAG ==
        (event->msg_flags & SCTP_DATA_FRAG_MASK)))
    queue = &sctp_sk(sk)->pd_lobby;
   else {
    clear_pd = event->msg_flags & MSG_EOR;
    queue = &sk->sk_receive_queue;
   }
  } else {





   if (sctp_sk(sk)->frag_interleave)
    queue = &sk->sk_receive_queue;
   else
    queue = &sctp_sk(sk)->pd_lobby;
  }
 }




 if (skb_list)
  sctp_skb_list_tail(skb_list, queue);
 else
  __skb_queue_tail(queue, skb);





 if (clear_pd)
  sctp_ulpq_clear_pd(ulpq);

 if (queue == &sk->sk_receive_queue)
  sk->sk_data_ready(sk, 0);
 return 1;

out_free:
 if (skb_list)
  sctp_queue_purge_ulpevents(skb_list);
 else
  sctp_ulpevent_free(event);

 return 0;
}
