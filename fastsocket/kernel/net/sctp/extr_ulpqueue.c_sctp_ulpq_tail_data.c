
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sctp_ulpq {int dummy; } ;
struct sctp_ulpevent {int msg_flags; } ;
struct sctp_chunk {int asoc; scalar_t__ chunk_hdr; } ;
typedef int sctp_data_chunk_t ;
typedef int gfp_t ;


 int ENOMEM ;
 int MSG_EOR ;
 int __skb_queue_tail (struct sk_buff_head*,int ) ;
 int sctp_event2skb (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_rcvmsg (int ,struct sctp_chunk*,int ) ;
 struct sctp_ulpevent* sctp_ulpq_order (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpq_reasm (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 int sctp_ulpq_tail_event (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 int skb_queue_head_init (struct sk_buff_head*) ;

int sctp_ulpq_tail_data(struct sctp_ulpq *ulpq, struct sctp_chunk *chunk,
   gfp_t gfp)
{
 struct sk_buff_head temp;
 sctp_data_chunk_t *hdr;
 struct sctp_ulpevent *event;

 hdr = (sctp_data_chunk_t *) chunk->chunk_hdr;


 event = sctp_ulpevent_make_rcvmsg(chunk->asoc, chunk, gfp);
 if (!event)
  return -ENOMEM;


 event = sctp_ulpq_reasm(ulpq, event);


 if ((event) && (event->msg_flags & MSG_EOR)){

  skb_queue_head_init(&temp);
  __skb_queue_tail(&temp, sctp_event2skb(event));

  event = sctp_ulpq_order(ulpq, event);
 }




 if (event)
  sctp_ulpq_tail_event(ulpq, event);

 return 0;
}
