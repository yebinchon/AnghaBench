
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_outq {int empty; } ;



int sctp_outq_is_empty(const struct sctp_outq *q)
{
 return q->empty;
}
