
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_outq {scalar_t__ malloced; } ;


 int __sctp_outq_teardown (struct sctp_outq*) ;
 int kfree (struct sctp_outq*) ;

void sctp_outq_free(struct sctp_outq *q)
{

 __sctp_outq_teardown(q);


 if (q->malloced)
  kfree(q);
}
