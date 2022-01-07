
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_ulpevent {TYPE_1__* asoc; int cumtsn; int tsn; int flags; int ppid; int ssn; int stream; } ;
struct sctp_sndrcvinfo {scalar_t__ sinfo_timetolive; int sinfo_context; int sinfo_assoc_id; int sinfo_cumtsn; int sinfo_tsn; int sinfo_flags; int sinfo_ppid; int sinfo_ssn; int sinfo_stream; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int default_rcv_context; } ;


 int IPPROTO_SCTP ;
 int SCTP_SNDRCV ;
 int put_cmsg (struct msghdr*,int ,int ,int,void*) ;
 int sctp_assoc2id (TYPE_1__*) ;
 scalar_t__ sctp_ulpevent_is_notification (struct sctp_ulpevent const*) ;

void sctp_ulpevent_read_sndrcvinfo(const struct sctp_ulpevent *event,
       struct msghdr *msghdr)
{
 struct sctp_sndrcvinfo sinfo;

 if (sctp_ulpevent_is_notification(event))
  return;
 sinfo.sinfo_stream = event->stream;







 sinfo.sinfo_ssn = event->ssn;
 sinfo.sinfo_ppid = event->ppid;
 sinfo.sinfo_flags = event->flags;





 sinfo.sinfo_tsn = event->tsn;







 sinfo.sinfo_cumtsn = event->cumtsn;







 sinfo.sinfo_assoc_id = sctp_assoc2id(event->asoc);


 sinfo.sinfo_context = event->asoc->default_rcv_context;


 sinfo.sinfo_timetolive = 0;

 put_cmsg(msghdr, IPPROTO_SCTP, SCTP_SNDRCV,
   sizeof(struct sctp_sndrcvinfo), (void *)&sinfo);
}
