
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct TYPE_4__ {int chunk; } ;
typedef TYPE_1__ sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int sctp_chunkhdr_t ;


 int SCTP_DEBUG_PRINTK (char*,int ) ;
 int SCTP_DISPOSITION_DISCARD ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,TYPE_1__ const,void*,int *) ;

sctp_disposition_t sctp_sf_discard_chunk(const struct sctp_endpoint *ep,
      const struct sctp_association *asoc,
      const sctp_subtype_t type,
      void *arg,
      sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;





 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_chunkhdr_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);

 SCTP_DEBUG_PRINTK("Chunk %d is discarded\n", type.chunk);
 return SCTP_DISPOSITION_DISCARD;
}
