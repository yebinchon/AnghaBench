
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpq {TYPE_2__* asoc; } ;
struct sctp_stream {int dummy; } ;
typedef int __u16 ;
struct TYPE_4__ {TYPE_1__* ssnmap; } ;
struct TYPE_3__ {struct sctp_stream in; } ;


 scalar_t__ SSN_lt (int ,int ) ;
 int sctp_ssn_peek (struct sctp_stream*,int ) ;
 int sctp_ssn_skip (struct sctp_stream*,int ,int ) ;
 int sctp_ulpq_reap_ordered (struct sctp_ulpq*,int ) ;

void sctp_ulpq_skip(struct sctp_ulpq *ulpq, __u16 sid, __u16 ssn)
{
 struct sctp_stream *in;


 in = &ulpq->asoc->ssnmap->in;


 if (SSN_lt(ssn, sctp_ssn_peek(in, sid)))
  return;


 sctp_ssn_skip(in, sid, ssn);




 sctp_ulpq_reap_ordered(ulpq, sid);
 return;
}
