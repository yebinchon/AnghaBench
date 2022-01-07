
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sctp_transport {TYPE_5__* asoc; } ;
struct sctp_outq {int fast_rtx; TYPE_4__* asoc; } ;
typedef int sctp_retransmit_reason_t ;
struct TYPE_6__ {struct sctp_transport* retran_path; } ;
struct TYPE_10__ {int init_retries; int unack_data; int rtx_data_chunks; TYPE_1__ peer; } ;
struct TYPE_8__ {TYPE_2__* sk; } ;
struct TYPE_9__ {TYPE_3__ base; int ctsn_ack_point; } ;
struct TYPE_7__ {int sk_err; } ;


 int BUG () ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_LOWER_CWND_FAST_RTX ;
 int SCTP_LOWER_CWND_T3_RTX ;
 int SCTP_MIB_FAST_RETRANSMITS ;
 int SCTP_MIB_PMTUD_RETRANSMITS ;
 int SCTP_MIB_T1_RETRANSMITS ;
 int SCTP_MIB_T3_RETRANSMITS ;




 int sctp_assoc_update_retran_path (TYPE_5__*) ;
 int sctp_generate_fwdtsn (struct sctp_outq*,int ) ;
 int sctp_outq_flush (struct sctp_outq*,int) ;
 int sctp_retransmit_mark (struct sctp_outq*,struct sctp_transport*,int) ;
 int sctp_transport_lower_cwnd (struct sctp_transport*,int ) ;

void sctp_retransmit(struct sctp_outq *q, struct sctp_transport *transport,
       sctp_retransmit_reason_t reason)
{
 int error = 0;

 switch(reason) {
 case 128:
  SCTP_INC_STATS(SCTP_MIB_T3_RETRANSMITS);
  sctp_transport_lower_cwnd(transport, SCTP_LOWER_CWND_T3_RTX);



  if (transport == transport->asoc->peer.retran_path)
   sctp_assoc_update_retran_path(transport->asoc);
  transport->asoc->rtx_data_chunks +=
   transport->asoc->unack_data;
  break;
 case 131:
  SCTP_INC_STATS(SCTP_MIB_FAST_RETRANSMITS);
  sctp_transport_lower_cwnd(transport, SCTP_LOWER_CWND_FAST_RTX);
  q->fast_rtx = 1;
  break;
 case 130:
  SCTP_INC_STATS(SCTP_MIB_PMTUD_RETRANSMITS);
  break;
 case 129:
  SCTP_INC_STATS(SCTP_MIB_T1_RETRANSMITS);
  transport->asoc->init_retries++;
  break;
 default:
  BUG();
 }

 sctp_retransmit_mark(q, transport, reason);





 if (reason == 128)
  sctp_generate_fwdtsn(q, q->asoc->ctsn_ack_point);





 if (reason != 131)
  error = sctp_outq_flush(q, 1);

 if (error)
  q->asoc->base.sk->sk_err = -error;
}
