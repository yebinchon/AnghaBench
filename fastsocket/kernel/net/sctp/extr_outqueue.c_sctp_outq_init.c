
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_outq {int empty; scalar_t__ out_qlen; scalar_t__ malloced; scalar_t__ cork; scalar_t__ outstanding_bytes; scalar_t__ fast_rtx; int abandoned; int sacked; int retransmit; int control_chunk_list; int out_chunk_list; struct sctp_association* asoc; } ;
struct sctp_association {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;

void sctp_outq_init(struct sctp_association *asoc, struct sctp_outq *q)
{
 q->asoc = asoc;
 INIT_LIST_HEAD(&q->out_chunk_list);
 INIT_LIST_HEAD(&q->control_chunk_list);
 INIT_LIST_HEAD(&q->retransmit);
 INIT_LIST_HEAD(&q->sacked);
 INIT_LIST_HEAD(&q->abandoned);

 q->fast_rtx = 0;
 q->outstanding_bytes = 0;
 q->empty = 1;
 q->cork = 0;

 q->malloced = 0;
 q->out_qlen = 0;
}
