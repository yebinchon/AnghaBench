
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_association {int outqueue; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_CMD_NEW_STATE ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_SHUTDOWN_PENDING ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 scalar_t__ sctp_outq_is_empty (int *) ;
 int sctp_sf_do_9_2_start_shutdown (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;

sctp_disposition_t sctp_sf_do_9_2_prm_shutdown(
 const struct sctp_endpoint *ep,
 const struct sctp_association *asoc,
 const sctp_subtype_t type,
 void *arg,
 sctp_cmd_seq_t *commands)
{
 int disposition;
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_SHUTDOWN_PENDING));

 disposition = SCTP_DISPOSITION_CONSUME;
 if (sctp_outq_is_empty(&asoc->outqueue)) {
  disposition = sctp_sf_do_9_2_start_shutdown(ep, asoc, type,
           arg, commands);
 }
 return disposition;
}
