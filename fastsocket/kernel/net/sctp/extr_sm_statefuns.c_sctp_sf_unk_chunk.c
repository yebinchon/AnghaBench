
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {TYPE_2__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
struct TYPE_7__ {int chunk; } ;
typedef TYPE_1__ sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
struct TYPE_8__ {int length; } ;
typedef TYPE_2__ sctp_chunkhdr_t ;


 int SCTP_CHUNK (struct sctp_chunk*) ;


 int SCTP_CID_ACTION_MASK ;


 int SCTP_CMD_REPLY ;
 int SCTP_DEBUG_PRINTK (char*,int) ;
 int SCTP_DISPOSITION_CONSUME ;
 int SCTP_DISPOSITION_DISCARD ;
 int SCTP_ERROR_UNKNOWN_CHUNK ;
 int WORD_ROUND (int ) ;
 int ntohs (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 struct sctp_chunk* sctp_make_op_error (struct sctp_association const*,struct sctp_chunk*,int ,TYPE_2__*,int ,int ) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,TYPE_1__ const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,TYPE_1__ const,void*,int *) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_unk_chunk(const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const sctp_subtype_t type,
         void *arg,
         sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *unk_chunk = arg;
 struct sctp_chunk *err_chunk;
 sctp_chunkhdr_t *hdr;

 SCTP_DEBUG_PRINTK("Processing the unknown chunk id %d.\n", type.chunk);

 if (!sctp_vtag_verify(unk_chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);





 if (!sctp_chunk_length_valid(unk_chunk, sizeof(sctp_chunkhdr_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);

 switch (type.chunk & SCTP_CID_ACTION_MASK) {
 case 131:

  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);
  break;
 case 130:

  hdr = unk_chunk->chunk_hdr;
  err_chunk = sctp_make_op_error(asoc, unk_chunk,
            SCTP_ERROR_UNKNOWN_CHUNK, hdr,
            WORD_ROUND(ntohs(hdr->length)),
            0);
  if (err_chunk) {
   sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
     SCTP_CHUNK(err_chunk));
  }


  sctp_sf_pdiscard(ep, asoc, type, arg, commands);
  return SCTP_DISPOSITION_CONSUME;
  break;
 case 129:

  return SCTP_DISPOSITION_DISCARD;
  break;
 case 128:

  hdr = unk_chunk->chunk_hdr;
  err_chunk = sctp_make_op_error(asoc, unk_chunk,
            SCTP_ERROR_UNKNOWN_CHUNK, hdr,
            WORD_ROUND(ntohs(hdr->length)),
            0);
  if (err_chunk) {
   sctp_add_cmd_sf(commands, SCTP_CMD_REPLY,
     SCTP_CHUNK(err_chunk));
  }

  return SCTP_DISPOSITION_CONSUME;
  break;
 default:
  break;
 }

 return SCTP_DISPOSITION_DISCARD;
}
