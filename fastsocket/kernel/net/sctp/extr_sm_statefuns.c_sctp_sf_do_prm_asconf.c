
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SETUP_T4 ;
 int SCTP_CMD_TIMER_START ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_EVENT_TIMEOUT_T4_RTO ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;

sctp_disposition_t sctp_sf_do_prm_asconf(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;

 sctp_add_cmd_sf(commands, SCTP_CMD_SETUP_T4, SCTP_CHUNK(chunk));
 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_START,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T4_RTO));
 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(chunk));
 return SCTP_DISPOSITION_CONSUME;
}
