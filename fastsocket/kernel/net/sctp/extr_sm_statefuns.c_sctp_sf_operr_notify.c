
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {scalar_t__ chunk_end; int chunk_hdr; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_operr_chunk_t ;
typedef int sctp_errhdr_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;


 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_PROCESS_OPERR ;
 int SCTP_DISPOSITION_CONSUME ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;
 int sctp_sf_violation_paramlen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,void*,int *) ;
 int sctp_vtag_verify (struct sctp_chunk*,struct sctp_association const*) ;
 int sctp_walk_errors (int *,int ) ;

sctp_disposition_t sctp_sf_operr_notify(const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const sctp_subtype_t type,
     void *arg,
     sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;
 sctp_errhdr_t *err;

 if (!sctp_vtag_verify(chunk, asoc))
  return sctp_sf_pdiscard(ep, asoc, type, arg, commands);


 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_operr_chunk_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);
 sctp_walk_errors(err, chunk->chunk_hdr);
 if ((void *)err != (void *)chunk->chunk_end)
  return sctp_sf_violation_paramlen(ep, asoc, type, arg,
        (void *)err, commands);

 sctp_add_cmd_sf(commands, SCTP_CMD_PROCESS_OPERR,
   SCTP_CHUNK(chunk));

 return SCTP_DISPOSITION_CONSUME;
}
