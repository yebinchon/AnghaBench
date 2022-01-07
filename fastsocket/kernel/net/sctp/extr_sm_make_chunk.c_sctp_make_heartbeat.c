
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_transport {int dummy; } ;
struct TYPE_2__ {int hbs_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; struct sctp_transport* transport; } ;
struct sctp_association {int dummy; } ;


 int SCTP_CID_HEARTBEAT ;
 int sctp_addto_chunk (struct sctp_chunk*,size_t const,void const*) ;
 struct sctp_chunk* sctp_make_chunk (struct sctp_association const*,int ,int ,size_t const) ;

struct sctp_chunk *sctp_make_heartbeat(const struct sctp_association *asoc,
      const struct sctp_transport *transport,
      const void *payload, const size_t paylen)
{
 struct sctp_chunk *retval = sctp_make_chunk(asoc, SCTP_CID_HEARTBEAT,
          0, paylen);

 if (!retval)
  goto nodata;




 retval->transport = (struct sctp_transport *) transport;
 retval->subh.hbs_hdr = sctp_addto_chunk(retval, paylen, payload);

nodata:
 return retval;
}
