
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ecne_hdr; } ;
struct sctp_chunk {TYPE_1__ subh; } ;
struct sctp_association {int dummy; } ;
struct TYPE_5__ {int lowest_tsn; } ;
typedef TYPE_2__ sctp_ecnehdr_t ;
typedef int ecne ;
typedef int __u32 ;


 int SCTP_CID_ECN_ECNE ;
 int htonl (int const) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,TYPE_2__*) ;
 struct sctp_chunk* sctp_make_chunk (struct sctp_association const*,int ,int ,int) ;

struct sctp_chunk *sctp_make_ecne(const struct sctp_association *asoc,
        const __u32 lowest_tsn)
{
 struct sctp_chunk *retval;
 sctp_ecnehdr_t ecne;

 ecne.lowest_tsn = htonl(lowest_tsn);
 retval = sctp_make_chunk(asoc, SCTP_CID_ECN_ECNE, 0,
     sizeof(sctp_ecnehdr_t));
 if (!retval)
  goto nodata;
 retval->subh.ecne_hdr =
  sctp_addto_chunk(retval, sizeof(ecne), &ecne);

nodata:
 return retval;
}
