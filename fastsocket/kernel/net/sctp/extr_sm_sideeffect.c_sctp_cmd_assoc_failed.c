
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_ulpevent {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_4__ {unsigned int error; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; TYPE_1__ outqueue; int ulpq; } ;
struct TYPE_5__ {scalar_t__ chunk; } ;
typedef TYPE_2__ sctp_subtype_t ;
typedef scalar_t__ sctp_event_t ;
typedef int sctp_cmd_seq_t ;
typedef int __u16 ;


 int GFP_ATOMIC ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 scalar_t__ SCTP_CID_ABORT ;
 int SCTP_CMD_DELETE_TCB ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_REPLY ;
 int SCTP_COMM_LOST ;
 scalar_t__ SCTP_EVENT_T_CHUNK ;
 int SCTP_NULL () ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_CLOSED ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 struct sctp_chunk* sctp_make_violation_max_retrans (struct sctp_association*,struct sctp_chunk*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_change (struct sctp_association*,int ,int ,int ,int ,int ,struct sctp_chunk*,int ) ;
 int sctp_ulpq_abort_pd (int *,int ) ;

__attribute__((used)) static void sctp_cmd_assoc_failed(sctp_cmd_seq_t *commands,
      struct sctp_association *asoc,
      sctp_event_t event_type,
      sctp_subtype_t subtype,
      struct sctp_chunk *chunk,
      unsigned error)
{
 struct sctp_ulpevent *event;
 struct sctp_chunk *abort;

 sctp_ulpq_abort_pd(&asoc->ulpq, GFP_ATOMIC);

 if (event_type == SCTP_EVENT_T_CHUNK && subtype.chunk == SCTP_CID_ABORT)
  event = sctp_ulpevent_make_assoc_change(asoc, 0, SCTP_COMM_LOST,
      (__u16)error, 0, 0, chunk,
      GFP_ATOMIC);
 else
  event = sctp_ulpevent_make_assoc_change(asoc, 0, SCTP_COMM_LOST,
      (__u16)error, 0, 0, ((void*)0),
      GFP_ATOMIC);
 if (event)
  sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP,
    SCTP_ULPEVENT(event));

 if (asoc->overall_error_count >= asoc->max_retrans) {
  abort = sctp_make_violation_max_retrans(asoc, chunk);
  if (abort)
   sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
     SCTP_CHUNK(abort));
 }

 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_CLOSED));


 asoc->outqueue.error = error;
 sctp_add_cmd_sf(commands, SCTP_CMD_DELETE_TCB, SCTP_NULL());
}
