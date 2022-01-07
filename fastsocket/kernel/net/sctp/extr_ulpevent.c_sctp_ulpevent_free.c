
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ulpevent {int dummy; } ;


 int kfree_skb (int ) ;
 int sctp_event2skb (struct sctp_ulpevent*) ;
 scalar_t__ sctp_ulpevent_is_notification (struct sctp_ulpevent*) ;
 int sctp_ulpevent_release_data (struct sctp_ulpevent*) ;
 int sctp_ulpevent_release_owner (struct sctp_ulpevent*) ;

void sctp_ulpevent_free(struct sctp_ulpevent *event)
{
 if (sctp_ulpevent_is_notification(event))
  sctp_ulpevent_release_owner(event);
 else
  sctp_ulpevent_release_data(event);

 kfree_skb(sctp_event2skb(event));
}
