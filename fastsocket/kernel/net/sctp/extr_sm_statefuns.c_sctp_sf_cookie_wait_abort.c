
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sctp_errhdr {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {int transport; TYPE_2__* skb; TYPE_1__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
struct TYPE_6__ {int cause; } ;
typedef TYPE_3__ sctp_errhdr_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int sctp_abort_chunk_t ;
typedef int __be16 ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {int length; } ;


 int ECONNREFUSED ;
 int SCTP_ERROR_NO_ERROR ;
 unsigned int ntohs (int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_stop_t1_and_abort (int *,int ,int ,struct sctp_association const*,int ) ;
 int sctp_vtag_verify_either (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_cookie_wait_abort(const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const sctp_subtype_t type,
         void *arg,
         sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 unsigned len;
 __be16 error = SCTP_ERROR_NO_ERROR;

 if (!sctp_vtag_verify_either(chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);
 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_abort_chunk_t)))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);


 len = ntohs(chunk->chunk_hdr->length);
 if (len >= sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_errhdr))
  error = ((sctp_errhdr_t *)chunk->skb->data)->cause;

 return sctp_stop_t1_and_abort(commands, error, ECONNREFUSED, asoc,
          chunk->transport);
}
