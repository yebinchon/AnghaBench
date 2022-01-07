
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {scalar_t__ overall_error_count; scalar_t__ max_retrans; int state; scalar_t__ shutdown_last_sent_to; int shutdown_retries; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int BUG () ;
 int ETIMEDOUT ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SETUP_T2 ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_STRIKE ;
 int SCTP_CMD_TIMER_RESTART ;
 int SCTP_DEBUG_PRINTK (char*) ;
 int SCTP_DEC_STATS (int ) ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DELETE_TCB ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_NO_ERROR ;
 int SCTP_EVENT_TIMEOUT_T2_SHUTDOWN ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_MIB_T2_SHUTDOWN_EXPIREDS ;
 int SCTP_PERR (int ) ;


 int SCTP_TO (int ) ;
 int SCTP_TRANSPORT (scalar_t__) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 struct sctp_chunk* sctp_make_shutdown (struct sctp_association const*,int *) ;
 struct sctp_chunk* sctp_make_shutdown_ack (struct sctp_association const*,int *) ;

sctp_disposition_t sctp_sf_t2_timer_expire(const struct sctp_endpoint *ep,
        const struct sctp_association *asoc,
        const sctp_subtype_t type,
        void *arg,
        sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *reply = ((void*)0);

 SCTP_DEBUG_PRINTK("Timer T2 expired.\n");
 SCTP_INC_STATS(SCTP_MIB_T2_SHUTDOWN_EXPIREDS);

 ((struct sctp_association *)asoc)->shutdown_retries++;

 if (asoc->overall_error_count >= asoc->max_retrans) {
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ETIMEDOUT));

  sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED,
    SCTP_PERR(SCTP_ERROR_NO_ERROR));
  SCTP_INC_STATS(SCTP_MIB_ABORTEDS);
  SCTP_DEC_STATS(SCTP_MIB_CURRESTAB);
  return SCTP_DISPOSITION_DELETE_TCB;
 }

 switch (asoc->state) {
 case 128:
  reply = sctp_make_shutdown(asoc, ((void*)0));
  break;

 case 129:
  reply = sctp_make_shutdown_ack(asoc, ((void*)0));
  break;

 default:
  BUG();
  break;
 }

 if (!reply)
  goto nomem;





 if (asoc->shutdown_last_sent_to)
  sctp_add_cmd_sf(commands, SCTP_CMD_STRIKE,
    SCTP_TRANSPORT(asoc->shutdown_last_sent_to));




 sctp_add_cmd_sf(commands, SCTP_CMD_SETUP_T2, SCTP_CHUNK(reply));


 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_RESTART,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T2_SHUTDOWN));
 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(reply));
 return SCTP_DISPOSITION_CONSUME;

nomem:
 return SCTP_DISPOSITION_NOMEM;
}
