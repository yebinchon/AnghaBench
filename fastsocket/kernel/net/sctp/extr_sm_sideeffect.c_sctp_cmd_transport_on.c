
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_transport {scalar_t__ state; int rto_pending; int hb_timer; scalar_t__ dst; scalar_t__ hb_sent; TYPE_1__* asoc; scalar_t__ error_count; } ;
struct sctp_chunk {TYPE_2__* skb; } ;
struct sctp_association {int dummy; } ;
struct TYPE_6__ {scalar_t__ sent_at; } ;
typedef TYPE_3__ sctp_sender_hb_info_t ;
typedef int sctp_cmd_seq_t ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ overall_error_count; } ;


 int SCTP_HEARTBEAT_SUCCESS ;
 scalar_t__ SCTP_INACTIVE ;
 scalar_t__ SCTP_PF ;
 scalar_t__ SCTP_STATE_SHUTDOWN_PENDING ;
 int SCTP_TRANSPORT_UP ;
 scalar_t__ SCTP_UNCONFIRMED ;
 int dst_confirm (scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int sctp_assoc_control_transport (struct sctp_association*,struct sctp_transport*,int ,int ) ;
 int sctp_transport_hold (struct sctp_transport*) ;
 int sctp_transport_timeout (struct sctp_transport*) ;
 int sctp_transport_update_rto (struct sctp_transport*,scalar_t__) ;

__attribute__((used)) static void sctp_cmd_transport_on(sctp_cmd_seq_t *cmds,
      struct sctp_association *asoc,
      struct sctp_transport *t,
      struct sctp_chunk *chunk)
{
 sctp_sender_hb_info_t *hbinfo;





 t->error_count = 0;
 if (t->asoc->state != SCTP_STATE_SHUTDOWN_PENDING)
  t->asoc->overall_error_count = 0;




 t->hb_sent = 0;




 if ((t->state == SCTP_INACTIVE) || (t->state == SCTP_UNCONFIRMED))
  sctp_assoc_control_transport(asoc, t, SCTP_TRANSPORT_UP,
          SCTP_HEARTBEAT_SUCCESS);

 if (t->state == SCTP_PF)
  sctp_assoc_control_transport(asoc, t, SCTP_TRANSPORT_UP,
          SCTP_HEARTBEAT_SUCCESS);




 if (t->dst)
  dst_confirm(t->dst);
 if (t->rto_pending == 0)
  t->rto_pending = 1;

 hbinfo = (sctp_sender_hb_info_t *) chunk->skb->data;
 sctp_transport_update_rto(t, (jiffies - hbinfo->sent_at));


 if (!mod_timer(&t->hb_timer, sctp_transport_timeout(t)))
  sctp_transport_hold(t);
}
