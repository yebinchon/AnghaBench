
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct TYPE_7__ {int * hb_hdr; } ;
struct sctp_chunk {TYPE_6__* skb; TYPE_2__* chunk_hdr; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
struct TYPE_9__ {int length; } ;
typedef TYPE_3__ sctp_paramhdr_t ;
typedef int sctp_heartbeathdr_t ;
typedef int sctp_heartbeat_chunk_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int sctp_chunkhdr_t ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_8__ {int length; } ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_REPLY ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_NOMEM ;
 size_t ntohs (int ) ;
 int pskb_pull (TYPE_6__*,size_t) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_make_heartbeat_ack (struct sctp_association const*,struct sctp_chunk*,TYPE_3__*,size_t) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_paramlen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,TYPE_3__*,int *) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_beat_8_3(const struct sctp_endpoint *ep,
        const struct sctp_association *asoc,
        const sctp_subtype_t type,
        void *arg,
        sctp_cmd_seq_t *commands)
{
 sctp_paramhdr_t *param_hdr;
 struct sctp_chunk *chunk = arg;
 struct sctp_chunk *reply;
 size_t paylen = 0;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_heartbeat_chunk_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);





 chunk->subh.hb_hdr = (sctp_heartbeathdr_t *) chunk->skb->data;
 param_hdr = (sctp_paramhdr_t *) chunk->subh.hb_hdr;
 paylen = ntohs(chunk->chunk_hdr->length) - sizeof(sctp_chunkhdr_t);

 if (ntohs(param_hdr->length) > paylen)
  return sctp_sf_violation_paramlen(ep, asoc, type, arg,
        param_hdr, commands);

 if (!pskb_pull(chunk->skb, paylen))
  goto nomem;

 reply = sctp_make_heartbeat_ack(asoc, chunk, param_hdr, paylen);
 if (!reply)
  goto nomem;

 sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(reply));
 return SCTP_DISPOSITION_CONSUME;

nomem:
 return SCTP_DISPOSITION_NOMEM;
}
