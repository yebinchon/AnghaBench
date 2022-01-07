
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int __be16 ;


 int SCTP_CMD_INIT_FAILED ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DEBUG_PRINTK (char*) ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_ERROR (int) ;
 int SCTP_EVENT_TIMEOUT_T1_INIT ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_PERR (int ) ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_CLOSED ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;

__attribute__((used)) static sctp_disposition_t sctp_stop_t1_and_abort(sctp_cmd_seq_t *commands,
        __be16 error, int sk_err,
        const struct sctp_association *asoc,
        struct sctp_transport *transport)
{
 SCTP_DEBUG_PRINTK("ABORT received (INIT).\n");
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_CLOSED));
 SCTP_INC_STATS(SCTP_MIB_ABORTEDS);
 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_INIT));
 sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR, SCTP_ERROR(sk_err));

 sctp_add_cmd_sf(commands, SCTP_CMD_INIT_FAILED,
   SCTP_PERR(error));
 return SCTP_DISPOSITION_ABORT;
}
