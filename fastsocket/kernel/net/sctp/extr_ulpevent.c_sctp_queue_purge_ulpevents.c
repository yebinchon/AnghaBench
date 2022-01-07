
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct sctp_ulpevent {int dummy; } ;


 struct sctp_ulpevent* sctp_skb2event (struct sk_buff*) ;
 int sctp_ulpevent_free (struct sctp_ulpevent*) ;
 int sctp_ulpevent_is_notification (struct sctp_ulpevent*) ;
 struct sk_buff* skb_dequeue (struct sk_buff_head*) ;

unsigned int sctp_queue_purge_ulpevents(struct sk_buff_head *list)
{
 struct sk_buff *skb;
 unsigned int data_unread = 0;

 while ((skb = skb_dequeue(list)) != ((void*)0)) {
  struct sctp_ulpevent *event = sctp_skb2event(skb);

  if (!sctp_ulpevent_is_notification(event))
   data_unread += skb->len;

  sctp_ulpevent_free(event);
 }

 return data_unread;
}
