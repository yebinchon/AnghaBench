
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int shutdown_hdr; } ;
struct sctp_chunk {int transport; TYPE_1__ subh; } ;
struct TYPE_6__ {int tsn_map; } ;
struct sctp_association {TYPE_2__ peer; } ;
typedef int shut ;
struct TYPE_7__ {int cum_tsn_ack; } ;
typedef TYPE_3__ sctp_shutdownhdr_t ;
typedef int __u32 ;


 int SCTP_CID_SHUTDOWN ;
 int htonl (int ) ;
 int sctp_addto_chunk (struct sctp_chunk*,int,TYPE_3__*) ;
 struct sctp_chunk* sctp_make_chunk (struct sctp_association const*,int ,int ,int) ;
 int sctp_tsnmap_get_ctsn (int *) ;

struct sctp_chunk *sctp_make_shutdown(const struct sctp_association *asoc,
          const struct sctp_chunk *chunk)
{
 struct sctp_chunk *retval;
 sctp_shutdownhdr_t shut;
 __u32 ctsn;

 ctsn = sctp_tsnmap_get_ctsn(&asoc->peer.tsn_map);
 shut.cum_tsn_ack = htonl(ctsn);

 retval = sctp_make_chunk(asoc, SCTP_CID_SHUTDOWN, 0,
     sizeof(sctp_shutdownhdr_t));
 if (!retval)
  goto nodata;

 retval->subh.shutdown_hdr =
  sctp_addto_chunk(retval, sizeof(shut), &shut);

 if (chunk)
  retval->transport = chunk->transport;
nodata:
 return retval;
}
