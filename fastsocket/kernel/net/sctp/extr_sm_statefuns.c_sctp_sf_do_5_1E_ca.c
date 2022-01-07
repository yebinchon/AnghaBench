
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_4__ {scalar_t__ adaptation_ind; } ;
struct TYPE_3__ {int sinit_max_instreams; int sinit_num_ostreams; } ;
struct sctp_association {TYPE_2__ peer; TYPE_1__ c; scalar_t__ autoclose; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int sctp_chunkhdr_t ;


 int GFP_ATOMIC ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_CMD_HB_TIMERS_START ;
 int SCTP_CMD_INIT_COUNTER_RESET ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_TIMER_START ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_COMM_UP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_EVENT_TIMEOUT_AUTOCLOSE ;
 int SCTP_EVENT_TIMEOUT_T1_COOKIE ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ACTIVEESTABS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_NULL () ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_ESTABLISHED ;
 int SCTP_TO (int ) ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 struct sctp_ulpevent* sctp_ulpevent_make_adaptation_indication (struct sctp_association const*,int ) ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_change (struct sctp_association const*,int ,int ,int ,int ,int ,int *,int ) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_do_5_1E_ca(const struct sctp_endpoint *ep,
          const struct sctp_association *asoc,
          const sctp_subtype_t type, void *arg,
          sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 struct sctp_ulpevent *ev;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);




 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_chunkhdr_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);







 sctp_add_cmd_sf(commands, SCTP_CMD_INIT_COUNTER_RESET, SCTP_NULL());







 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_COOKIE));
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_ESTABLISHED));
 SCTP_INC_STATS(SCTP_MIB_CURRESTAB);
 SCTP_INC_STATS(SCTP_MIB_ACTIVEESTABS);
 sctp_add_cmd_sf(commands, SCTP_CMD_HB_TIMERS_START, SCTP_NULL());
 if (asoc->autoclose)
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_START,
    SCTP_TO(SCTP_EVENT_TIMEOUT_AUTOCLOSE));





 ev = sctp_ulpevent_make_assoc_change(asoc, 0, SCTP_COMM_UP,
          0, asoc->c.sinit_num_ostreams,
          asoc->c.sinit_max_instreams,
          ((void*)0), GFP_ATOMIC);

 if (!ev)
  goto nomem;

 sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP, SCTP_ULPEVENT(ev));






 if (asoc->peer.adaptation_ind) {
  ev = sctp_ulpevent_make_adaptation_indication(asoc, GFP_ATOMIC);
  if (!ev)
   goto nomem;

  sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP,
    SCTP_ULPEVENT(ev));
 }

 return SCTP_DISPOSITION_CONSUME;
nomem:
 return SCTP_DISPOSITION_NOMEM;
}
