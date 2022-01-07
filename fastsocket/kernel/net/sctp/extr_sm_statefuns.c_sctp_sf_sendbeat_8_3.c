
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int param_flags; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; } ;
typedef int sctp_subtype_t ;
typedef scalar_t__ sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int ETIMEDOUT ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_HB_TIMER_UPDATE ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_TRANSPORT_HB_SENT ;
 int SCTP_CMD_TRANSPORT_IDLE ;
 int SCTP_DEC_STATS (int ) ;
 scalar_t__ SCTP_DISPOSITION_CONSUME ;
 scalar_t__ SCTP_DISPOSITION_DELETE_TCB ;
 scalar_t__ SCTP_DISPOSITION_NOMEM ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_NO_ERROR ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_PERR (int ) ;
 int SCTP_TRANSPORT (struct sctp_transport*) ;
 int SPP_HB_ENABLE ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 scalar_t__ sctp_sf_heartbeat (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;

sctp_disposition_t sctp_sf_sendbeat_8_3(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 struct sctp_transport *transport = (struct sctp_transport *) arg;

 if (asoc->overall_error_count >= asoc->max_retrans) {
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ETIMEDOUT));

  sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
    SCTP_PERR(SCTP_ERROR_NO_ERROR));
  SCTP_INC_STATS(SCTP_MIB_ABORTEDS);
  SCTP_DEC_STATS(SCTP_MIB_CURRESTAB);
  return SCTP_DISPOSITION_DELETE_TCB;
 }
 if (transport->param_flags & SPP_HB_ENABLE) {
  if (SCTP_DISPOSITION_NOMEM ==
    sctp_sf_heartbeat(ep, asoc, type, arg,
        commands))
   return SCTP_DISPOSITION_NOMEM;




  sctp_add_cmd_sf(commands, SCTP_CMD_TRANSPORT_HB_SENT,
    SCTP_TRANSPORT(transport));
 }
 sctp_add_cmd_sf(commands, SCTP_CMD_TRANSPORT_IDLE,
   SCTP_TRANSPORT(transport));
 sctp_add_cmd_sf(commands, SCTP_CMD_HB_TIMER_UPDATE,
   SCTP_TRANSPORT(transport));

 return SCTP_DISPOSITION_CONSUME;
}
