
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_sackhdr {int dummy; } ;
struct sctp_association {int ep; int state; int outqueue; } ;
typedef int sctp_cmd_seq_t ;


 int GFP_ATOMIC ;
 int SCTP_EVENT_NO_PENDING_TSN ;
 int SCTP_EVENT_T_OTHER ;
 int SCTP_ST_OTHER (int ) ;
 int sctp_do_sm (int ,int ,int ,int ,struct sctp_association*,int *,int ) ;
 scalar_t__ sctp_outq_sack (int *,struct sctp_sackhdr*) ;

__attribute__((used)) static int sctp_cmd_process_sack(sctp_cmd_seq_t *cmds,
     struct sctp_association *asoc,
     struct sctp_sackhdr *sackh)
{
 int err = 0;

 if (sctp_outq_sack(&asoc->outqueue, sackh)) {

  err = sctp_do_sm(SCTP_EVENT_T_OTHER,
     SCTP_ST_OTHER(SCTP_EVENT_NO_PENDING_TSN),
     asoc->state, asoc->ep, asoc, ((void*)0),
     GFP_ATOMIC);
 }

 return err;
}
