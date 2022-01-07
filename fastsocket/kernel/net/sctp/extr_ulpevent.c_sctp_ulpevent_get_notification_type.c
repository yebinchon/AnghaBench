
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sn_type; } ;
union sctp_notification {TYPE_1__ sn_header; } ;
struct sk_buff {scalar_t__ data; } ;
struct sctp_ulpevent {int dummy; } ;
typedef int __u16 ;


 struct sk_buff* sctp_event2skb (struct sctp_ulpevent const*) ;

__u16 sctp_ulpevent_get_notification_type(const struct sctp_ulpevent *event)
{
 union sctp_notification *notification;
 struct sk_buff *skb;

 skb = sctp_event2skb(event);
 notification = (union sctp_notification *) skb->data;
 return notification->sn_header.sn_type;
}
