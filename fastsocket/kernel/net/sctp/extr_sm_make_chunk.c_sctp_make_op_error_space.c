
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_chunk {int transport; } ;
struct sctp_association {int dummy; } ;
typedef int sctp_errhdr_t ;


 int SCTP_CID_ERROR ;
 struct sctp_chunk* sctp_make_chunk (struct sctp_association const*,int ,int ,int) ;

__attribute__((used)) static struct sctp_chunk *sctp_make_op_error_space(
 const struct sctp_association *asoc,
 const struct sctp_chunk *chunk,
 size_t size)
{
 struct sctp_chunk *retval;

 retval = sctp_make_chunk(asoc, SCTP_CID_ERROR, 0,
     sizeof(sctp_errhdr_t) + size);
 if (!retval)
  goto nodata;
 if (chunk)
  retval->transport = chunk->transport;

nodata:
 return retval;
}
