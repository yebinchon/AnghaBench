
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ulpevent {int msg_flags; } ;


 int MSG_NOTIFICATION ;

int sctp_ulpevent_is_notification(const struct sctp_ulpevent *event)
{
 return MSG_NOTIFICATION == (event->msg_flags & MSG_NOTIFICATION);
}
