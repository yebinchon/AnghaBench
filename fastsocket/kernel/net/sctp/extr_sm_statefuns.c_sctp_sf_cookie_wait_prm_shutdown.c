
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_CMD_DELETE_TCB ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DISPOSITION_DELETE_TCB ;
 int SCTP_EVENT_TIMEOUT_T1_INIT ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_SHUTDOWNS ;
 int SCTP_NULL () ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_CLOSED ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;

sctp_disposition_t sctp_sf_cookie_wait_prm_shutdown(
 const struct sctp_endpoint *ep,
 const struct sctp_association *asoc,
 const sctp_subtype_t type,
 void *arg,
 sctp_cmd_seq_t *commands)
{
 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_INIT));

 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_CLOSED));

 SCTP_INC_STATS(SCTP_MIB_SHUTDOWNS);

 sctp_add_cmd_sf(commands, SCTP_CMD_DELETE_TCB, SCTP_NULL());

 return SCTP_DISPOSITION_DELETE_TCB;
}
