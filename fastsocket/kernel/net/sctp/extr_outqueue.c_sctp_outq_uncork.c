
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_outq {scalar_t__ cork; } ;


 int sctp_outq_flush (struct sctp_outq*,int ) ;

int sctp_outq_uncork(struct sctp_outq *q)
{
 int error = 0;
 if (q->cork)
  q->cork = 0;
 error = sctp_outq_flush(q, 0);
 return error;
}
