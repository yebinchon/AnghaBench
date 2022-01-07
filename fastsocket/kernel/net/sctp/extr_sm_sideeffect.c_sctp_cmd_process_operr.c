
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_ulpevent {int dummy; } ;
struct sctp_errhdr {int cause; scalar_t__ variable; } ;
struct sctp_chunk {scalar_t__ chunk_end; TYPE_1__* skb; } ;
struct TYPE_5__ {int asconf_capable; } ;
struct sctp_association {TYPE_2__ peer; int ulpq; } ;
typedef int sctp_cmd_seq_t ;
struct TYPE_6__ {int type; } ;
typedef TYPE_3__ sctp_chunkhdr_t ;
struct TYPE_4__ {scalar_t__ data; } ;


 int GFP_ATOMIC ;

 int SCTP_CMD_TIMER_STOP ;

 int SCTP_EVENT_TIMEOUT_T4_RTO ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_remote_error (struct sctp_association*,struct sctp_chunk*,int ,int ) ;
 int sctp_ulpq_tail_event (int *,struct sctp_ulpevent*) ;

__attribute__((used)) static void sctp_cmd_process_operr(sctp_cmd_seq_t *cmds,
       struct sctp_association *asoc,
       struct sctp_chunk *chunk)
{
 struct sctp_errhdr *err_hdr;
 struct sctp_ulpevent *ev;

 while (chunk->chunk_end > chunk->skb->data) {
  err_hdr = (struct sctp_errhdr *)(chunk->skb->data);

  ev = sctp_ulpevent_make_remote_error(asoc, chunk, 0,
           GFP_ATOMIC);
  if (!ev)
   return;

  sctp_ulpq_tail_event(&asoc->ulpq, ev);

  switch (err_hdr->cause) {
  case 128:
  {
   sctp_chunkhdr_t *unk_chunk_hdr;

   unk_chunk_hdr = (sctp_chunkhdr_t *)err_hdr->variable;
   switch (unk_chunk_hdr->type) {






   case 129:
    if (asoc->peer.asconf_capable == 0)
     break;

    asoc->peer.asconf_capable = 0;
    sctp_add_cmd_sf(cmds, SCTP_CMD_TIMER_STOP,
     SCTP_TO(SCTP_EVENT_TIMEOUT_T4_RTO));
    break;
   default:
    break;
   }
   break;
  }
  default:
   break;
  }
 }
}
