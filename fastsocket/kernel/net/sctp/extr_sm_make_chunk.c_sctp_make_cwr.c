
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ecn_cwr_hdr; } ;
struct sctp_chunk {int transport; TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
struct TYPE_5__ {int lowest_tsn; } ;
typedef TYPE_2__ sctp_cwrhdr_t ;
typedef int cwr ;
typedef int __u32 ;


 int SCTP_CID_ECN_CWR ;
 int htonl (int const) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,TYPE_2__*) ;
 struct sctp_chunk* sctp_make_chunk (struct sctp_association const*,int ,int ,int) ;

struct sctp_chunk *sctp_make_cwr(const struct sctp_association *asoc,
       const __u32 lowest_tsn,
       const struct sctp_chunk *chunk)
{
 struct sctp_chunk *retval;
 sctp_cwrhdr_t cwr;

 cwr.lowest_tsn = htonl(lowest_tsn);
 retval = sctp_make_chunk(asoc, SCTP_CID_ECN_CWR, 0,
     sizeof(sctp_cwrhdr_t));

 if (!retval)
  goto nodata;

 retval->subh.ecn_cwr_hdr =
  sctp_addto_chunk(retval, sizeof(cwr), &cwr);
 if (chunk)
  retval->transport = chunk->transport;

nodata:
 return retval;
}
