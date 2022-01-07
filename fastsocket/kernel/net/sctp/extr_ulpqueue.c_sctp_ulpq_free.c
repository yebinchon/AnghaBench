
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ulpq {scalar_t__ malloced; } ;


 int kfree (struct sctp_ulpq*) ;
 int sctp_ulpq_flush (struct sctp_ulpq*) ;

void sctp_ulpq_free(struct sctp_ulpq *ulpq)
{
 sctp_ulpq_flush(ulpq);
 if (ulpq->malloced)
  kfree(ulpq);
}
