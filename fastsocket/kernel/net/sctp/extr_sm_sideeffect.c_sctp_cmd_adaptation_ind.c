
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ulpevent {int dummy; } ;
struct sctp_association {int ulpq; } ;
typedef int sctp_cmd_seq_t ;


 int GFP_ATOMIC ;
 struct sctp_ulpevent* sctp_ulpevent_make_adaptation_indication (struct sctp_association*,int ) ;
 int sctp_ulpq_tail_event (int *,struct sctp_ulpevent*) ;

__attribute__((used)) static void sctp_cmd_adaptation_ind(sctp_cmd_seq_t *commands,
        struct sctp_association *asoc)
{
 struct sctp_ulpevent *ev;

 ev = sctp_ulpevent_make_adaptation_indication(asoc, GFP_ATOMIC);

 if (ev)
  sctp_ulpq_tail_event(&asoc->ulpq, ev);
}
