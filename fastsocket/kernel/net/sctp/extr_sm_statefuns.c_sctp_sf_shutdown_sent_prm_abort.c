
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_CMD_TIMER_STOP ;
 int SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 int SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_sf_do_9_1_prm_abort (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;

sctp_disposition_t sctp_sf_shutdown_sent_prm_abort(
 const struct sctp_endpoint *ep,
 const struct sctp_association *asoc,
 const sctp_subtype_t type,
 void *arg,
 sctp_cmd_seq_t *commands)
{

 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));


 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD));

 return sctp_sf_do_9_1_prm_abort(ep, asoc, type, arg, commands);
}
