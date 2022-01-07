
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_subtype_t ;
typedef int sctp_disposition_t ;
typedef int sctp_cmd_seq_t ;
typedef int sctp_chunkhdr_t ;


 int SCTP_DISPOSITION_VIOLATION ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_violation_chunklen (struct sctp_endpoint const*,struct sctp_association const*,int const,void*,int *) ;

sctp_disposition_t sctp_sf_violation(const struct sctp_endpoint *ep,
         const struct sctp_association *asoc,
         const sctp_subtype_t type,
         void *arg,
         sctp_cmd_seq_t *commands)
{
 struct sctp_chunk *chunk = arg;


 if (!sctp_chunk_length_valid(chunk, sizeof(sctp_chunkhdr_t)))
  return sctp_sf_violation_chunklen(ep, asoc, type, arg,
        commands);

 return SCTP_DISPOSITION_VIOLATION;
}
