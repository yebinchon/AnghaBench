
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpq {TYPE_2__* asoc; int pd_mode; } ;
struct sctp_ulpevent {int msg_flags; int tsn; } ;
typedef int __u32 ;
struct TYPE_3__ {int tsn_map; } ;
struct TYPE_4__ {TYPE_1__ peer; } ;


 int MSG_EOR ;
 int SCTP_DATA_FRAG_MASK ;
 int SCTP_DATA_NOT_FRAG ;
 scalar_t__ TSN_lte (int ,int ) ;
 int sctp_tsnmap_get_ctsn (int *) ;
 struct sctp_ulpevent* sctp_ulpq_retrieve_partial (struct sctp_ulpq*) ;
 struct sctp_ulpevent* sctp_ulpq_retrieve_reassembled (struct sctp_ulpq*) ;
 int sctp_ulpq_store_reasm (struct sctp_ulpq*,struct sctp_ulpevent*) ;

__attribute__((used)) static struct sctp_ulpevent *sctp_ulpq_reasm(struct sctp_ulpq *ulpq,
      struct sctp_ulpevent *event)
{
 struct sctp_ulpevent *retval = ((void*)0);


 if (SCTP_DATA_NOT_FRAG == (event->msg_flags & SCTP_DATA_FRAG_MASK)) {
  event->msg_flags |= MSG_EOR;
  return event;
 }

 sctp_ulpq_store_reasm(ulpq, event);
 if (!ulpq->pd_mode)
  retval = sctp_ulpq_retrieve_reassembled(ulpq);
 else {
  __u32 ctsn, ctsnap;




  ctsn = event->tsn;
  ctsnap = sctp_tsnmap_get_ctsn(&ulpq->asoc->peer.tsn_map);
  if (TSN_lte(ctsn, ctsnap))
   retval = sctp_ulpq_retrieve_partial(ulpq);
 }

 return retval;
}
