
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctp_packet {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_6__ {int v; } ;
struct TYPE_5__ {int * init_hdr; } ;
struct sctp_chunk {TYPE_3__* chunk_hdr; TYPE_4__* skb; TYPE_2__ param_hdr; int transport; TYPE_1__ subh; int singleton; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_inithdr_t ;
typedef int sctp_initack_chunk_t ;
typedef int sctp_init_chunk_t ;
typedef int sctp_error_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int sctp_chunkhdr_t ;
typedef int __u8 ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_7__ {int length; int type; } ;


 int ECONNREFUSED ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CID_ABORT ;
 int SCTP_CMD_ASSOC_SHKEY ;
 int SCTP_CMD_GEN_COOKIE_ECHO ;
 int SCTP_CMD_INIT_COUNTER_RESET ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_PEER_INIT ;
 int SCTP_CMD_SEND_PKT ;
 int SCTP_CMD_TIMER_START ;
 int SCTP_CMD_TIMER_STOP ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_ERROR_INV_PARAM ;
 int SCTP_ERROR_NO_RESOURCE ;
 int SCTP_EVENT_TIMEOUT_T1_COOKIE ;
 int SCTP_EVENT_TIMEOUT_T1_INIT ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_NULL () ;
 int SCTP_PACKET (struct sctp_packet*) ;
 int SCTP_PEER_INIT (int *) ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_COOKIE_ECHOED ;
 int SCTP_TO (int ) ;
 scalar_t__ ntohs (int ) ;
 struct sctp_packet* sctp_abort_pkt_new (struct sctp_endpoint const*,struct sctp_association const*,void*,int *,scalar_t__) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 scalar_t__ sctp_auth_recv_cid (int ,struct sctp_association const*) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunk (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_stop_t1_and_abort (int *,int ,int ,struct sctp_association const*,int ) ;
 int sctp_verify_init (struct sctp_association const*,int ,int *,struct sctp_chunk*,struct sctp_chunk**) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;
 int skb_pull (TYPE_4__*,int) ;

sctp_disposition_t sctp_sf_do_5_1C_ack(const struct sctp_endpoint *ep,
           const struct sctp_association *asoc,
           const sctp_subtype_t type,
           void *arg,
           sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 sctp_init_chunk_t *initchunk;
 struct sctp_chunk *err_chunk;
 struct sctp_packet *packet;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);





 if (!chunk->singleton)
  return sctp_sf_violation_chunk(ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_initack_chunk_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);

 chunk->subh.init_hdr = (sctp_inithdr_t *) chunk->skb->data;


 err_chunk = ((void*)0);
 if (!sctp_verify_init(asoc, chunk->chunk_hdr->type,
         (sctp_init_chunk_t *)chunk->chunk_hdr, chunk,
         &err_chunk)) {

  sctp_error_t error = SCTP_ERROR_NO_RESOURCE;






  if (err_chunk) {
   packet = sctp_abort_pkt_new(ep, asoc, arg,
     (__u8 *)(err_chunk->chunk_hdr) +
     sizeof(sctp_chunkhdr_t),
     ntohs(err_chunk->chunk_hdr->length) -
     sizeof(sctp_chunkhdr_t));

   sctp_chunk_free(err_chunk);

   if (packet) {
    sctp_add_cmd_sf(commands, SCTP_CMD_SEND_PKT,
      SCTP_PACKET(packet));
    SCTP_INC_STATS(SCTP_MIB_OUTCTRLCHUNKS);
    error = SCTP_ERROR_INV_PARAM;
   }
  }
  if (sctp_auth_recv_cid(SCTP_CID_ABORT, asoc))
   return sctp_sf_pdiscard(ep, asoc, type, arg, commands);

  SCTP_INC_STATS(SCTP_MIB_ABORTEDS);
  return sctp_stop_t1_and_abort(commands, error, ECONNREFUSED,
      asoc, chunk->transport);
 }




 chunk->param_hdr.v = skb_pull(chunk->skb, sizeof(sctp_inithdr_t));

 initchunk = (sctp_init_chunk_t *) chunk->chunk_hdr;

 sctp_add_cmd_sf(commands, SCTP_CMD_PEER_INIT,
   SCTP_PEER_INIT(initchunk));


 sctp_add_cmd_sf(commands, SCTP_CMD_INIT_COUNTER_RESET, SCTP_NULL());





 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_INIT));
 sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_START,
   SCTP_TO(SCTP_EVENT_TIMEOUT_T1_COOKIE));
 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_COOKIE_ECHOED));




 sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_SHKEY, SCTP_NULL());







 sctp_add_cmd_sf(commands, SCTP_CMD_GEN_COOKIE_ECHO,
   SCTP_CHUNK(err_chunk));

 return SCTP_DISPOSITION_CONSUME;
}
