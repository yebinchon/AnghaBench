
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int time_t ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {TYPE_1__* skb; } ;
struct sctp_bind_addr {int dummy; } ;
struct TYPE_10__ {int primary_path; } ;
struct TYPE_9__ {int bind_addr; } ;
struct sctp_association {int init_err_counter; int max_init_attempts; TYPE_4__ peer; TYPE_3__ base; } ;
typedef int sctp_subtype_t ;
typedef int sctp_errhdr_t ;
typedef int sctp_disposition_t ;
struct TYPE_8__ {int length; int type; } ;
struct TYPE_11__ {int lifespan_increment; TYPE_2__ param_hdr; } ;
typedef TYPE_5__ sctp_cookie_preserve_param_t ;
typedef int sctp_cmd_seq_t ;
typedef int bht ;
typedef int __be32 ;
struct TYPE_7__ {scalar_t__ data; } ;


 int ETIMEDOUT ;
 int GFP_ATOMIC ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_CLEAR_INIT_TAG ;
 int SCTP_CMD_DEL_NON_PRIMARY ;
 int SCTP_CMD_HB_TIMERS_STOP ;
 int SCTP_CMD_INIT_COUNTER_INC ;
 int SCTP_CMD_INIT_FAILED ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_CMD_T1_RETRAN ;
 int SCTP_CMD_T3_RTX_TIMERS_STOP ;
 int SCTP_CMD_TIMER_START ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DELETE_TCB ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_STALE_COOKIE ;
 int SCTP_EVENT_TIMEOUT_T1_COOKIE ;
 int SCTP_EVENT_TIMEOUT_T1_INIT ;
 int SCTP_NULL () ;
 int SCTP_PARAM_COOKIE_PRESERVATIVE ;
 int SCTP_PERR (int ) ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_COOKIE_WAIT ;
 int SCTP_TO (int ) ;
 int SCTP_TRANSPORT (int ) ;
 int htonl (int) ;
 int htons (int) ;
 int ntohl (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,TYPE_5__*) ;
 struct sctp_chunk* sctp_make_init (struct sctp_association const*,struct sctp_bind_addr*,int ,int) ;

__attribute__((used)) static sctp_disposition_t sctp_sf_do_5_2_6_stale(const struct sctp_endpoint *ep,
       const struct sctp_association *asoc,
       const sctp_subtype_t type,
       void *arg,
       sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 time_t stale;
 sctp_cookie_preserve_param_t bht;
 sctp_errhdr_t *err;
 struct sctp_chunk *reply;
 struct sctp_bind_addr *bp;
 int attempts = asoc->init_err_counter + 1;

 if (attempts > asoc->max_init_attempts) {
  sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR,
    SCTP_ERROR(ETIMEDOUT));
  sctp_add_cmd_sf(commands, SCTP_CMD_INIT_FAILED,
    SCTP_PERR(SCTP_ERROR_STALE_COOKIE));
  return SCTP_DISPOSITION_DELETE_TCB;
 }

 err = (sctp_errhdr_t *)(chunk->skb->data);
 stale = ntohl(*(__be32 *)((u8 *)err + sizeof(sctp_errhdr_t)));
 stale = (stale * 2) / 1000;

 bht.param_hdr.type = SCTP_PARAM_COOKIE_PRESERVATIVE;
 bht.param_hdr.length = htons(sizeof(bht));
 bht.lifespan_increment = htonl(stale);


 bp = (struct sctp_bind_addr *) &asoc->base.bind_addr;
 reply = sctp_make_init(asoc, bp, GFP_ATOMIC, sizeof(bht));
 if (!reply)
  goto nomem;

 sctp_addto_chunk(reply, sizeof(bht), &bht);


 sctp_add_cmd_sf(commands, SCTP_CMD_CLEAR_INIT_TAG, SCTP_NULL());


 sctp_add_cmd_sf(commands, SCTP_CMD_T3_RTX_TIMERS_STOP, SCTP_NULL());
 sctp_add_cmd_sf(commands, SCTP_CMD_HB_TIMERS_STOP, SCTP_NULL());




 sctp_add_cmd_sf(commands, SCTP_CMD_DEL_NON_PRIMARY, SCTP_NULL());




 sctp_add_cmd_sf(commands, SCTP_CMD_T1_RETRAN,
   SCTP_TRANSPORT(asoc->peer.primary_path));




 sctp_add_cmd_sf(commands, SCTP_CMD_INIT_COUNTER_INC, SCTP_NULL());

 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_COOKIE));
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_COOKIE_WAIT));
 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_START,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_INIT));

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(reply));

 return SCTP_DISPOSITION_CONSUME;

nomem:
 return SCTP_DISPOSITION_NOMEM;
}
