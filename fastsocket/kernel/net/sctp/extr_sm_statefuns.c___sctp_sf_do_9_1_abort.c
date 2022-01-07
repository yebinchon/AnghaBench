
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sctp_errhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {TYPE_1__* skb; scalar_t__ chunk_end; TYPE_4__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
struct TYPE_6__ {int cause; } ;
typedef TYPE_2__ sctp_errhdr_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int __be16 ;
struct TYPE_7__ {int length; } ;
struct TYPE_5__ {scalar_t__ data; } ;


 int ECONNRESET ;
 int SCTP_CMD_ASSOC_FAILED ;
 int SCTP_CMD_SET_SK_ERR ;
 int SCTP_DEC_STATS (int ) ;
 int SCTP_DISPOSITION_ABORT ;
 int SCTP_ERROR (int ) ;
 int SCTP_ERROR_NO_ERROR ;
 int SCTP_INC_STATS (int ) ;
 int SCTP_MIB_ABORTEDS ;
 int SCTP_MIB_CURRESTAB ;
 int SCTP_PERR (int ) ;
 unsigned int ntohs (int ) ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_walk_errors (TYPE_2__*,TYPE_4__*) ;

__attribute__((used)) static sctp_disposition_t __sctp_sf_do_9_1_abort(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 unsigned len;
 __be16 error = SCTP_ERROR_NO_ERROR;


 len = ntohs(chunk->chunk_hdr->length);
 if (len >= sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_errhdr)) {

  sctp_errhdr_t *err;
  sctp_walk_errors(err, chunk->chunk_hdr);
  if ((void *)err != (void *)chunk->chunk_end)
   return sctp_sf_pdiscard(ep, asoc, type, arg, commands);

  error = ((sctp_errhdr_t *)chunk->skb->data)->cause;
 }

 sctp_add_cmd_sf(commands, SCTP_CMD_SET_SK_ERR, SCTP_ERROR(ECONNRESET));

 sctp_add_cmd_sf(commands, SCTP_CMD_ASSOC_FAILED, SCTP_PERR(error));
 SCTP_INC_STATS(SCTP_MIB_ABORTEDS);
 SCTP_DEC_STATS(SCTP_MIB_CURRESTAB);

 return SCTP_DISPOSITION_ABORT;
}
