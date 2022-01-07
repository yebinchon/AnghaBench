
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; scalar_t__ state; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int ETIMEDOUT ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_RETRAN ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_STRIKE ;
 int SCTP_CMD_TIMER_START_ONCE ;
 int SCTP_DEC_STATS (int ) ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DELETE_TCB ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_NO_ERROR ;
 int SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_MIB_T3_RTX_EXPIREDS ;
 int SCTP_PERR (int ) ;
 scalar_t__ SCTP_STATE_SHUTDOWN_PENDING ;
 int SCTP_TO (int ) ;
 int SCTP_TRANSPORT (struct sctp_transport*) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;

sctp_disposition_t sctp_sf_do_6_3_3_rtx(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 struct sctp_transport *transport = arg;

 SCTP_INC_STATS(SCTP_MIB_T3_RTX_EXPIREDS);

 if (asoc->overall_error_count >= asoc->max_retrans) {
  if (asoc->state == SCTP_STATE_SHUTDOWN_PENDING) {
   sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_START_ONCE,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD));
  } else {
   sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
     SCTP_ERROR(ETIMEDOUT));

   sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
     SCTP_PERR(SCTP_ERROR_NO_ERROR));
   SCTP_INC_STATS(SCTP_MIB_ABORTEDS);
   SCTP_DEC_STATS(SCTP_MIB_CURRESTAB);
   return SCTP_DISPOSITION_DELETE_TCB;
  }
 }
 sctp_add_cmd_sf(commands, SCTP_CMD_STRIKE, SCTP_TRANSPORT(transport));


 sctp_add_cmd_sf(commands, SCTP_CMD_RETRAN, SCTP_TRANSPORT(transport));

 return SCTP_DISPOSITION_CONSUME;
}
