
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sctp_ulpevent {int dummy; } ;
struct TYPE_2__ {int sinit_max_instreams; int sinit_num_ostreams; } ;
struct sctp_association {int ulpq; TYPE_1__ c; } ;
typedef int sctp_cmd_seq_t ;


 int GFP_ATOMIC ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_change (struct sctp_association*,int ,int ,int ,int ,int ,int *,int ) ;
 int sctp_ulpq_tail_event (int *,struct sctp_ulpevent*) ;

__attribute__((used)) static void sctp_cmd_assoc_change(sctp_cmd_seq_t *commands,
     struct sctp_association *asoc,
     u8 state)
{
 struct sctp_ulpevent *ev;

 ev = sctp_ulpevent_make_assoc_change(asoc, 0, state, 0,
         asoc->c.sinit_num_ostreams,
         asoc->c.sinit_max_instreams,
         ((void*)0), GFP_ATOMIC);
 if (ev)
  sctp_ulpq_tail_event(&asoc->ulpq, ev);
}
