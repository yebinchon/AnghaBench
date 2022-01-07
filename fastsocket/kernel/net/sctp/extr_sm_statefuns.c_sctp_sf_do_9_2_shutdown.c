
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_ulpevent {int dummy; } ;
struct sctp_shutdown_chunk_t {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct TYPE_4__ {TYPE_2__* shutdown_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; TYPE_3__* skb; } ;
struct sctp_association {int outqueue; int next_tsn; int ctsn_ack_point; } ;
typedef int sctp_subtype_t ;
struct TYPE_5__ {int cum_tsn_ack; } ;
typedef TYPE_2__ sctp_shutdownhdr_t ;
typedef scalar_t__ sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int __u32 ;
struct TYPE_6__ {scalar_t__ data; } ;


 int GFP_ATOMIC ;
 int SCTP_BE32 (int ) ;
 int SCTP_CMD_EVENT_ULP ;
 int SCTP_CMD_NEW_STATE ;
 int SCTP_CMD_PROCESS_CTSN ;
 int SCTP_DEBUG_PRINTK (char*,int ) ;
 scalar_t__ SCTP_DISPOSITION_CONSUME ;
 scalar_t__ SCTP_DISPOSITION_DISCARD ;
 scalar_t__ SCTP_DISPOSITION_NOMEM ;
 int SCTP_STATE (int ) ;
 int SCTP_STATE_SHUTDOWN_RECEIVED ;
 int SCTP_ULPEVENT (struct sctp_ulpevent*) ;
 scalar_t__ TSN_lt (int ,int ) ;
 int ntohl (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 scalar_t__ sctp_outq_is_empty (int *) ;
 scalar_t__ sctp_sf_do_9_2_shutdown_ack (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 scalar_t__ sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 scalar_t__ sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 scalar_t__ sctp_sf_violation_ctsn (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 struct sctp_ulpevent* sctp_ulpevent_make_shutdown_event (struct sctp_association const*,int ,int ) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;
 int skb_pull (TYPE_3__*,int) ;

sctp_disposition_t sctp_sf_do_9_2_shutdown(const struct sctp_endpoint *ep,
        const struct sctp_association *asoc,
        const sctp_subtype_t type,
        void *arg,
        sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 sctp_shutdownhdr_t *sdh;
 sctp_disposition_t disposition;
 struct sctp_ulpevent *ev;
 __u32 ctsn;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk,
          sizeof(struct sctp_shutdown_chunk_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);


 sdh = (sctp_shutdownhdr_t *)chunk->skb->data;
 skb_pull(chunk->skb, sizeof(sctp_shutdownhdr_t));
 chunk->subh.shutdown_hdr = sdh;
 ctsn = ntohl(sdh->cum_tsn_ack);

 if (TSN_lt(ctsn, asoc->ctsn_ack_point)) {
  SCTP_DEBUG_PRINTK("ctsn %x\n", ctsn);
  SCTP_DEBUG_PRINTK("ctsn_ack_point %x\n", asoc->ctsn_ack_point);
  return SCTP_DISPOSITION_DISCARD;
 }





 if (!TSN_lt(ctsn, asoc->next_tsn))
  return sctp_sf_violation_ctsn(ep, asoc, type, arg, commands);





 ev = sctp_ulpevent_make_shutdown_event(asoc, 0, GFP_ATOMIC);
 if (!ev) {
  disposition = SCTP_DISPOSITION_NOMEM;
  goto out;
 }
 sctp_add_cmd_sf(commands, SCTP_CMD_EVENT_ULP, SCTP_ULPEVENT(ev));







 sctp_add_cmd_sf(commands, SCTP_CMD_NEW_STATE,
   SCTP_STATE(SCTP_STATE_SHUTDOWN_RECEIVED));
 disposition = SCTP_DISPOSITION_CONSUME;

 if (sctp_outq_is_empty(&asoc->outqueue)) {
  disposition = sctp_sf_do_9_2_shutdown_ack(ep, asoc, type,
         arg, commands);
 }

 if (SCTP_DISPOSITION_NOMEM == disposition)
  goto out;





 sctp_add_cmd_sf(commands, SCTP_CMD_PROCESS_CTSN,
   SCTP_BE32(chunk->subh.shutdown_hdr->cum_tsn_ack));

out:
 return disposition;
}
