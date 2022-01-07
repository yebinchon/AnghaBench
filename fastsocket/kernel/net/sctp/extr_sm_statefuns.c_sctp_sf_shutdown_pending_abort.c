
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dest; } ;
struct TYPE_2__ {int bind_addr; } ;
struct sctp_association {TYPE_1__ base; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int sctp_abort_chunk_t ;


 scalar_t__ SCTP_ADDR_DEL ;
 int __sctp_sf_do_9_1_abort (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 scalar_t__ sctp_bind_addr_state (int *,int *) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_discard_chunk (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_vtag_verify_either (struct sctp_chunk*,struct sctp_association const*) ;

sctp_disposition_t sctp_sf_shutdown_pending_abort(
 const struct sctp_endpoint *ep,
 const struct sctp_association *asoc,
 const sctp_subtype_t type,
 void *arg,
 sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;

 if (!sctp_vtag_verify_either(chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);
 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_abort_chunk_t)))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);






 if (SCTP_ADDR_DEL ==
      sctp_bind_addr_state(&asoc->base.bind_addr, &chunk->dest))
  return sctp_sf_discard_chunk(ep, asoc, type, arg, commands);

 return __sctp_sf_do_9_1_abort(ep, asoc, type, arg, commands);
}
