
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct sctp_packet {size_t size; int ipfragok; int has_data; TYPE_1__* transport; } ;
struct sctp_chunk {scalar_t__ auth; } ;
typedef int sctp_xmit_t ;
struct TYPE_4__ {size_t pathmtu; } ;
struct TYPE_3__ {size_t pathmtu; TYPE_2__* asoc; } ;


 int SCTP_XMIT_OK ;
 int SCTP_XMIT_PMTU_FULL ;
 int sctp_chunk_is_data (struct sctp_chunk*) ;
 scalar_t__ sctp_packet_empty (struct sctp_packet*) ;

__attribute__((used)) static sctp_xmit_t sctp_packet_will_fit(struct sctp_packet *packet,
     struct sctp_chunk *chunk,
     u16 chunk_len)
{
 size_t psize;
 size_t pmtu;
 int too_big;
 sctp_xmit_t retval = SCTP_XMIT_OK;

 psize = packet->size;
 pmtu = ((packet->transport->asoc) ?
  (packet->transport->asoc->pathmtu) :
  (packet->transport->pathmtu));

 too_big = (psize + chunk_len > pmtu);


 if (too_big) {
  if (sctp_packet_empty(packet) || !sctp_chunk_is_data(chunk) ||
      (!packet->has_data && chunk->auth)) {




   packet->ipfragok = 1;
  } else {
   retval = SCTP_XMIT_PMTU_FULL;
  }
 }

 return retval;
}
