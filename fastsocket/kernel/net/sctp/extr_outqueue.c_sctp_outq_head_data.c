
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_outq {int out_qlen; int out_chunk_list; } ;
struct sctp_chunk {TYPE_1__* skb; int list; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int list_add (int *,int *) ;

__attribute__((used)) static inline void sctp_outq_head_data(struct sctp_outq *q,
     struct sctp_chunk *ch)
{
 list_add(&ch->list, &q->out_chunk_list);
 q->out_qlen += ch->skb->len;
 return;
}
