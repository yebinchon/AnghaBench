
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int peer_vtag; } ;
struct sctp_signed_cookie {TYPE_1__ c; } ;
struct sctp_packet {int vtag; } ;
struct TYPE_7__ {int sk; } ;
struct sctp_endpoint {TYPE_3__ base; } ;
struct TYPE_8__ {struct sctp_signed_cookie* cookie_hdr; } ;
struct sctp_chunk {TYPE_2__* skb; TYPE_4__ subh; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_cmd_seq_t ;
struct TYPE_6__ {int sk; } ;


 int SCTP_CMD_SEND_PKT ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_OUTCTRLCHUNKS ;
 int SCTP_PACKET (struct sctp_packet*) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 struct sctp_packet* sctp_ootb_pkt_new (struct sctp_association const*,struct sctp_chunk const*) ;
 int sctp_packet_append_chunk (struct sctp_packet*,struct sctp_chunk*) ;

__attribute__((used)) static void sctp_send_stale_cookie_err(const struct sctp_endpoint *ep,
           const struct sctp_association *asoc,
           const struct sctp_chunk *chunk,
           sctp_cmd_seq_t *commands,
           struct sctp_chunk *err_chunk)
{
 struct sctp_packet *packet;

 if (err_chunk) {
  packet = sctp_ootb_pkt_new(asoc, chunk);
  if (packet) {
   struct sctp_signed_cookie *cookie;


   cookie = chunk->subh.cookie_hdr;
   packet->vtag = cookie->c.peer_vtag;


   err_chunk->skb->sk = ep->base.sk;
   sctp_packet_append_chunk(packet, err_chunk);
   sctp_add_cmd_sf(commands, SCTP_CMD_SEND_PKT,
     SCTP_PACKET(packet));
   SCTP_INC_STATS(SCTP_MIB_OUTCTRLCHUNKS);
  } else
   sctp_chunk_free (err_chunk);
 }
}
