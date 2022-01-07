
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_shutdown_chunk_t {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {scalar_t__ autoclose; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_HB_TIMERS_STOP ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SETUP_T2 ;
 int SCTP_CMD_TIMER_RESTART ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_EVENT_TIMEOUT_AUTOCLOSE ;
 int SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 int SCTP_NULL () ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_SHUTDOWN_ACK_SENT ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_make_shutdown_ack (struct sctp_association const*,struct sctp_chunk*) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_do_9_2_shutdown_ack(
 const struct sctp_endpoint *ep,
 const struct sctp_association *asoc,
 const sctp_subtype_t type,
 void *arg,
 sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = (struct sctp_chunk *) arg;
 struct sctp_chunk *reply;
 if (chunk) {
  if (!sctp_vtag_verify(chunk, asoc))
   return sctp_sf_pdiscard(ep, asoc, type, arg, commands);


  if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_shutdown_chunk_t)))
   return sctp_sf_violation_chunklen(ep, asoc, type, arg,
         commands);
 }




 reply = sctp_make_shutdown_ack(asoc, chunk);
 if (!reply)
  goto nomem;




 sctp_add_cmd_sf(commands, SCTP_CMD_SETUP_T2, SCTP_CHUNK(reply));


 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_RESTART,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));

 if (asoc->autoclose)
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
    SCTP_TO(SCTP_EVENT_TIMEOUT_AUTOCLOSE));


 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_SHUTDOWN_ACK_SENT));






 sctp_add_cmd_sf(commands, SCTP_CMD_HB_TIMERS_STOP, SCTP_NULL());

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(reply));

 return SCTP_DISPOSITION_CONSUME;

nomem:
 return SCTP_DISPOSITION_NOMEM;
}
