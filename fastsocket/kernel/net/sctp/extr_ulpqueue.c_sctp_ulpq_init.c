
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ulpq {scalar_t__ malloced; scalar_t__ pd_mode; int lobby; int reasm; struct sctp_association* asoc; } ;
struct sctp_association {int dummy; } ;


 int memset (struct sctp_ulpq*,int ,int) ;
 int skb_queue_head_init (int *) ;

struct sctp_ulpq *sctp_ulpq_init(struct sctp_ulpq *ulpq,
     struct sctp_association *asoc)
{
 memset(ulpq, 0, sizeof(struct sctp_ulpq));

 ulpq->asoc = asoc;
 skb_queue_head_init(&ulpq->reasm);
 skb_queue_head_init(&ulpq->lobby);
 ulpq->pd_mode = 0;
 ulpq->malloced = 0;

 return ulpq;
}
