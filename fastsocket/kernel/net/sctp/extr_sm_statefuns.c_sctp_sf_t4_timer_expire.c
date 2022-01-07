
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {struct sctp_transport* transport; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; struct sctp_chunk* addip_last_asconf; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int ETIMEDOUT ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SETUP_T4 ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_STRIKE ;
 int SCTP_CMD_TIMER_RESTART ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DEC_STATS (int ) ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_NO_ERROR ;
 int SCTP_EVENT_TIMEOUT_T4_RTO ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_MIB_T4_RTO_EXPIREDS ;
 int SCTP_PERR (int ) ;
 int SCTP_TO (int ) ;
 int SCTP_TRANSPORT (struct sctp_transport*) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_hold (struct sctp_chunk*) ;

sctp_disposition_t sctp_sf_t4_timer_expire(
 const struct sctp_endpoint *ep,
 const struct sctp_association *asoc,
 const sctp_subtype_t type,
 void *arg,
 sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = asoc->addip_last_asconf;
 struct sctp_transport *transport = chunk->transport;

 SCTP_INC_STATS(SCTP_MIB_T4_RTO_EXPIREDS);





 if (transport)
  sctp_add_cmd_sf(commands, SCTP_CMD_STRIKE,
    SCTP_TRANSPORT(transport));


 sctp_add_cmd_sf(commands, SCTP_CMD_SETUP_T4, SCTP_CHUNK(chunk));






 if (asoc->overall_error_count >= asoc->max_retrans) {
  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T4_RTO));
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ETIMEDOUT));
  sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
    SCTP_PERR(SCTP_ERROR_NO_ERROR));
  SCTP_INC_STATS(SCTP_MIB_ABORTEDS);
  SCTP_DEC_STATS(SCTP_MIB_CURRESTAB);
  return SCTP_DISPOSITION_ABORT;
 }
 sctp_chunk_hold(asoc->addip_last_asconf);
 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
   SCTP_CHUNK(asoc->addip_last_asconf));





 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_RESTART,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T4_RTO));

 return SCTP_DISPOSITION_CONSUME;
}
