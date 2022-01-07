
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hbs_hdr; } ;
struct sctp_chunk {int transport; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;


 int SCTP_CID_HEARTBEAT_ACK ;
 int sctp_addto_chunk (struct sctp_chunk*,size_t const,void const*) ;
 struct sctp_chunk* sctp_make_chunk (struct sctp_association const*,int ,int ,size_t const) ;

struct sctp_chunk *sctp_make_heartbeat_ack(const struct sctp_association *asoc,
          const struct sctp_chunk *chunk,
          const void *payload, const size_t paylen)
{
 struct sctp_chunk *retval;

 retval = sctp_make_chunk(asoc, SCTP_CID_HEARTBEAT_ACK, 0, paylen);
 if (!retval)
  goto nodata;

 retval->subh.hbs_hdr = sctp_addto_chunk(retval, paylen, payload);
 if (chunk)
  retval->transport = chunk->transport;

nodata:
 return retval;
}
