
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_ulpq {scalar_t__ pd_mode; struct sctp_association* asoc; } ;
struct sctp_ulpevent {int dummy; } ;
struct sctp_sock {int pd_mode; scalar_t__ frag_interleave; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int sk; } ;
struct sctp_association {TYPE_1__ base; } ;
typedef int gfp_t ;


 scalar_t__ atomic_read (int *) ;
 struct sctp_sock* sctp_sk (int ) ;
 struct sctp_ulpevent* sctp_ulpq_retrieve_first (struct sctp_ulpq*) ;
 int sctp_ulpq_set_pd (struct sctp_ulpq*) ;
 int sctp_ulpq_tail_event (struct sctp_ulpq*,struct sctp_ulpevent*) ;

void sctp_ulpq_partial_delivery(struct sctp_ulpq *ulpq,
    struct sctp_chunk *chunk,
    gfp_t gfp)
{
 struct sctp_ulpevent *event;
 struct sctp_association *asoc;
 struct sctp_sock *sp;

 asoc = ulpq->asoc;
 sp = sctp_sk(asoc->base.sk);




 if (ulpq->pd_mode)
  return;






 if (sp->frag_interleave || atomic_read(&sp->pd_mode) == 0) {

  event = sctp_ulpq_retrieve_first(ulpq);

  if (event) {
   sctp_ulpq_tail_event(ulpq, event);
   sctp_ulpq_set_pd(ulpq);
   return;
  }
 }
}
