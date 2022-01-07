
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef scalar_t__ sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_CMD_TRANSPORT_HB_SENT ;
 scalar_t__ SCTP_DISPOSITION_CONSUME ;
 scalar_t__ SCTP_DISPOSITION_NOMEM ;
 int SCTP_TRANSPORT (void*) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 scalar_t__ sctp_sf_heartbeat (struct sctp_endpoint const*,struct sctp_association const*,int const,struct sctp_transport*,int *) ;

sctp_disposition_t sctp_sf_do_prm_requestheartbeat(
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 if (SCTP_DISPOSITION_NOMEM == sctp_sf_heartbeat(ep, asoc, type,
          (struct sctp_transport *)arg, commands))
  return SCTP_DISPOSITION_NOMEM;
 sctp_add_cmd_sf(commands, SCTP_CMD_TRANSPORT_HB_SENT,
   SCTP_TRANSPORT(arg));
 return SCTP_DISPOSITION_CONSUME;
}
