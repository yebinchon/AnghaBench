
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct TYPE_7__ {TYPE_2__* cookie_hdr; } ;
struct sctp_chunk {TYPE_3__ subh; } ;
struct TYPE_8__ {scalar_t__ adaptation_ind; } ;
struct sctp_association {TYPE_4__ peer; } ;
typedef int sctp_init_chunk_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
struct TYPE_5__ {int * peer_init; } ;
struct TYPE_6__ {TYPE_1__ c; } ;


 int GFP_ATOMIC ;
 int SCTP_ASOC (struct sctp_association*) ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_ADAPTATION_IND ;
 int SCTP_CMD_ASSOC_CHANGE ;
 int SCTP_CMD_HB_TIMERS_START ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_UPDATE_ASSOC ;
 int SCTP_COMM_UP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_NULL () ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_ESTABLISHED ;
 int SCTP_U8 (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 struct sctp_chunk* sctp_make_cookie_ack (struct sctp_association*,struct sctp_chunk*) ;
 int sctp_process_init (struct sctp_association*,struct sctp_chunk*,int ,int *,int ) ;
 int sctp_source (struct sctp_chunk*) ;

__attribute__((used)) static sctp_disposition_t sctp_sf_do_dupcook_b(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     struct sctp_chunk *chunk,
     sctp_cmd_seq_t *commands,
     struct sctp_association *new_asoc)
{
 sctp_init_chunk_t *peer_init;
 struct sctp_chunk *repl;




 peer_init = &chunk->subh.cookie_hdr->c.peer_init[0];
 if (!sctp_process_init(new_asoc, chunk, sctp_source(chunk), peer_init,
          GFP_ATOMIC))
  goto nomem;


 sctp_add_cmd_sf(commands, SCTP_CMD_UPDATE_ASSOC, SCTP_ASOC(new_asoc));
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_ESTABLISHED));
 SCTP_INC_STATS(SCTP_MIB_CURRESTAB);
 sctp_add_cmd_sf(commands, SCTP_CMD_HB_TIMERS_START, SCTP_NULL());

 repl = sctp_make_cookie_ack(new_asoc, chunk);
 if (!repl)
  goto nomem;

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(repl));
 sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_CHANGE, SCTP_U8(SCTP_COMM_UP));
 if (asoc->peer.adaptation_ind)
  sctp_add_cmd_sf(commands, SCTP_CMD_ADAPTATION_IND, SCTP_NULL());

 return SCTP_DISPOSITION_CONSUME;

nomem:
 return SCTP_DISPOSITION_NOMEM;
}
