
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_bind_addr {int dummy; } ;
struct TYPE_2__ {int bind_addr; } ;
struct sctp_association {int init_err_counter; int max_init_attempts; TYPE_1__ base; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int ETIMEDOUT ;
 int GFP_ATOMIC ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_INIT_CHOOSE_TRANSPORT ;
 int SCTP_CMD_INIT_FAILED ;
 int SCTP_CMD_INIT_RESTART ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_DEBUG_PRINTK (char*,...) ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DELETE_TCB ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_NO_ERROR ;
 int SCTP_EVENT_TIMEOUT_T1_INIT ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_T1_INIT_EXPIREDS ;
 int SCTP_PERR (int ) ;
 int SCTP_TO (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 struct sctp_chunk* sctp_make_init (struct sctp_association const*,struct sctp_bind_addr*,int ,int ) ;

sctp_disposition_t sctp_sf_t1_init_timer_expire(const struct sctp_endpoint *ep,
        const struct sctp_association *asoc,
        const sctp_subtype_t type,
        void *arg,
        sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *repl = ((void*)0);
 struct sctp_bind_addr *bp;
 int attempts = asoc->init_err_counter + 1;

 SCTP_DEBUG_PRINTK("Timer T1 expired (INIT).\n");
 SCTP_INC_STATS(SCTP_MIB_T1_INIT_EXPIREDS);

 if (attempts <= asoc->max_init_attempts) {
  bp = (struct sctp_bind_addr *) &asoc->base.bind_addr;
  repl = sctp_make_init(asoc, bp, GFP_ATOMIC, 0);
  if (!repl)
   return SCTP_DISPOSITION_NOMEM;


  sctp_add_cmd_sf(commands, SCTP_CMD_INIT_CHOOSE_TRANSPORT,
    SCTP_CHUNK(repl));


  sctp_add_cmd_sf(commands, SCTP_CMD_INIT_RESTART,
    SCTP_TO(SCTP_EVENT_TIMEOUT_T1_INIT));

  sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(repl));
 } else {
  SCTP_DEBUG_PRINTK("Giving up on INIT, attempts: %d"
      " max_init_attempts: %d\n",
      attempts, asoc->max_init_attempts);
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ETIMEDOUT));
  sctp_add_cmd_sf(commands, SCTP_CMD_INIT_FAILED,
    SCTP_PERR(SCTP_ERROR_NO_ERROR));
  return SCTP_DISPOSITION_DELETE_TCB;
 }

 return SCTP_DISPOSITION_CONSUME;
}
