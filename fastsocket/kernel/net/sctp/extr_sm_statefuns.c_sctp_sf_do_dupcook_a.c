
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_8__ {TYPE_2__* cookie_hdr; } ;
struct sctp_chunk {TYPE_4__* chunk_hdr; TYPE_3__ subh; } ;
struct TYPE_10__ {int sinit_max_instreams; int sinit_num_ostreams; } ;
struct sctp_association {TYPE_5__ c; } ;
typedef int sctp_init_chunk_t ;
typedef scalar_t__ sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
struct TYPE_9__ {int type; } ;
struct TYPE_6__ {int * peer_init; } ;
struct TYPE_7__ {TYPE_1__ c; } ;


 int GFP_ATOMIC ;
 int SCTP_ASOC (struct sctp_association*) ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_PURGE_ASCONF_QUEUE ;
 int SCTP_CMD_PURGE_OUTQUEUE ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_T3_RTX_TIMERS_STOP ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_CMD_UPDATE_ASSOC ;
 scalar_t__ SCTP_DISPOSITION_CONSUME ;
 scalar_t__ SCTP_DISPOSITION_NOMEM ;
 int SCTP_ERROR_COOKIE_IN_SHUTDOWN ;
 int SCTP_EVENT_TIMEOUT_SACK ;
 int SCTP_EVENT_TIMEOUT_T4_RTO ;
 int SCTP_NULL () ;
 int SCTP_RESTART ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_ESTABLISHED ;
 int SCTP_ST_CHUNK (int ) ;
 int SCTP_TO (int ) ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 int SHUTDOWN_ACK_SENT ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 struct sctp_chunk* sctp_make_cookie_ack (struct sctp_association*,struct sctp_chunk*) ;
 struct sctp_chunk* sctp_make_op_error (struct sctp_association const*,struct sctp_chunk*,int ,int *,int ,int ) ;
 int sctp_process_init (struct sctp_association*,struct sctp_chunk*,int ,int *,int ) ;
 int sctp_sf_check_restart_addrs (struct sctp_association*,struct sctp_association const*,struct sctp_chunk*,int *) ;
 scalar_t__ sctp_sf_do_9_2_reshutack (struct sctp_endpoint const*,struct sctp_association const*,int ,struct sctp_chunk*,int *) ;
 int sctp_source (struct sctp_chunk*) ;
 scalar_t__ sctp_state (struct sctp_association const*,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_change (struct sctp_association const*,int ,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static sctp_disposition_t sctp_sf_do_dupcook_a(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     struct sctp_chunk *chunk,
     sctp_cmd_seq_t *commands,
     struct sctp_association *new_asoc)
{
 sctp_init_chunk_t *peer_init;
 struct sctp_ulpevent *ev;
 struct sctp_chunk *repl;
 struct sctp_chunk *err;
 sctp_disposition_t disposition;




 peer_init = &chunk->subh.cookie_hdr->c.peer_init[0];

 if (!sctp_process_init(new_asoc, chunk, sctp_source(chunk), peer_init,
          GFP_ATOMIC))
  goto nomem;





 if (!sctp_sf_check_restart_addrs(new_asoc, asoc, chunk, commands)) {
  return SCTP_DISPOSITION_CONSUME;
 }







 if (sctp_state(asoc, SHUTDOWN_ACK_SENT)) {
  disposition = sctp_sf_do_9_2_reshutack(ep, asoc,
    SCTP_ST_CHUNK(chunk->chunk_hdr->type),
    chunk, commands);
  if (SCTP_DISPOSITION_NOMEM == disposition)
   goto nomem;

  err = sctp_make_op_error(asoc, chunk,
      SCTP_ERROR_COOKIE_IN_SHUTDOWN,
      ((void*)0), 0, 0);
  if (err)
   sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
     SCTP_CHUNK(err));

  return SCTP_DISPOSITION_CONSUME;
 }




 sctp_add_cmd_sf(commands, SCTP_CMD_T3_RTX_TIMERS_STOP, SCTP_NULL());
 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_SACK));
 sctp_add_cmd_sf(commands, SCTP_CMD_PURGE_OUTQUEUE, SCTP_NULL());




 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T4_RTO));
 sctp_add_cmd_sf(commands, SCTP_CMD_PURGE_ASCONF_QUEUE, SCTP_NULL());

 repl = sctp_make_cookie_ack(new_asoc, chunk);
 if (!repl)
  goto nomem;


 ev = sctp_ulpevent_make_assoc_change(asoc, 0, SCTP_RESTART, 0,
          new_asoc->c.sinit_num_ostreams,
          new_asoc->c.sinit_max_instreams,
          ((void*)0), GFP_ATOMIC);
 if (!ev)
  goto nomem_ev;


 sctp_add_cmd_sf(commands, SCTP_CMD_UPDATE_ASSOC, SCTP_ASOC(new_asoc));
 sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP, SCTP_ULPEVENT(ev));
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_ESTABLISHED));
 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(repl));
 return SCTP_DISPOSITION_CONSUME;

nomem_ev:
 sctp_chunk_free(repl);
nomem:
 return SCTP_DISPOSITION_NOMEM;
}
