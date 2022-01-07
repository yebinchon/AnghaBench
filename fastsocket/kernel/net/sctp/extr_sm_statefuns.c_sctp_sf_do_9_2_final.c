
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_ulpevent {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int sctp_chunkhdr_t ;


 int GFP_ATOMIC ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_DELETE_TCB ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DEC_STATS (int ) ;
 int SCTP_DISPOSITION_DELETE_TCB ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 int SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_MIB_SHUTDOWNS ;
 int SCTP_NULL () ;
 int SCTP_SHUTDOWN_COMP ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_CLOSED ;
 int SCTP_TO (int ) ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_make_shutdown_complete (struct sctp_association const*,struct sctp_chunk*) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_ulpevent_free (struct sctp_ulpevent*) ;
 struct sctp_ulpevent* sctp_ulpevent_make_assoc_change (struct sctp_association const*,int ,int ,int ,int ,int ,int *,int ) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_do_9_2_final(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 struct sctp_chunk *reply;
 struct sctp_ulpevent *ev;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_chunkhdr_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);





 ev = sctp_ulpevent_make_assoc_change(asoc, 0, SCTP_SHUTDOWN_COMP,
          0, 0, 0, ((void*)0), GFP_ATOMIC);
 if (!ev)
  goto nomem;


 reply = sctp_make_shutdown_complete(asoc, chunk);
 if (!reply)
  goto nomem_chunk;




 sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP, SCTP_ULPEVENT(ev));




 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));

 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD));

 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_CLOSED));
 SCTP_INC_STATS(SCTP_MIB_SHUTDOWNS);
 SCTP_DEC_STATS(SCTP_MIB_CURRESTAB);
 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(reply));


 sctp_add_cmd_sf(commands, SCTP_CMD_DELETE_TCB, SCTP_NULL());
 return SCTP_DISPOSITION_DELETE_TCB;

nomem_chunk:
 sctp_ulpevent_free(ev);
nomem:
 return SCTP_DISPOSITION_NOMEM;
}
