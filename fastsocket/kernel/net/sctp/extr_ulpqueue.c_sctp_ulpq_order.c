
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpq {TYPE_2__* asoc; } ;
struct sctp_ulpevent {int msg_flags; scalar_t__ stream; scalar_t__ ssn; } ;
struct sctp_stream {int dummy; } ;
typedef scalar_t__ __u16 ;
struct TYPE_4__ {TYPE_1__* ssnmap; } ;
struct TYPE_3__ {struct sctp_stream in; } ;


 int SCTP_DATA_UNORDERED ;
 int sctp_ssn_next (struct sctp_stream*,scalar_t__) ;
 scalar_t__ sctp_ssn_peek (struct sctp_stream*,scalar_t__) ;
 int sctp_ulpq_retrieve_ordered (struct sctp_ulpq*,struct sctp_ulpevent*) ;
 int sctp_ulpq_store_ordered (struct sctp_ulpq*,struct sctp_ulpevent*) ;

__attribute__((used)) static struct sctp_ulpevent *sctp_ulpq_order(struct sctp_ulpq *ulpq,
          struct sctp_ulpevent *event)
{
 __u16 sid, ssn;
 struct sctp_stream *in;


 if (SCTP_DATA_UNORDERED & event->msg_flags)
  return event;


 sid = event->stream;
 ssn = event->ssn;
 in = &ulpq->asoc->ssnmap->in;


 if (ssn != sctp_ssn_peek(in, sid)) {



  sctp_ulpq_store_ordered(ulpq, event);
  return ((void*)0);
 }


 sctp_ssn_next(in, sid);




 sctp_ulpq_retrieve_ordered(ulpq, event);

 return event;
}
