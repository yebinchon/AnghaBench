
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sctp_transport {size_t flight_size; size_t cwnd; unsigned int pathmtu; struct sctp_association* asoc; } ;
struct sctp_packet {unsigned int overhead; struct sctp_transport* transport; } ;
struct sctp_outq {size_t outstanding_bytes; unsigned int out_qlen; } ;
struct sctp_chunk {scalar_t__ fast_retransmit; TYPE_4__* msg; TYPE_3__* skb; } ;
struct TYPE_7__ {int sk; } ;
struct TYPE_6__ {size_t rwnd; } ;
struct sctp_association {TYPE_2__ base; TYPE_1__ peer; struct sctp_outq outqueue; } ;
typedef int sctp_xmit_t ;
struct TYPE_10__ {int nodelay; } ;
struct TYPE_9__ {scalar_t__ can_delay; } ;
struct TYPE_8__ {unsigned int len; } ;


 int ESTABLISHED ;
 scalar_t__ SCTP_NEED_FRTX ;
 int SCTP_XMIT_NAGLE_DELAY ;
 int SCTP_XMIT_OK ;
 int SCTP_XMIT_RWND_FULL ;
 size_t sctp_data_size (struct sctp_chunk*) ;
 scalar_t__ sctp_packet_empty (struct sctp_packet*) ;
 TYPE_5__* sctp_sk (int ) ;
 scalar_t__ sctp_state (struct sctp_association*,int ) ;

__attribute__((used)) static sctp_xmit_t sctp_packet_can_append_data(struct sctp_packet *packet,
        struct sctp_chunk *chunk)
{
 sctp_xmit_t retval = SCTP_XMIT_OK;
 size_t datasize, rwnd, inflight, flight_size;
 struct sctp_transport *transport = packet->transport;
 struct sctp_association *asoc = transport->asoc;
 struct sctp_outq *q = &asoc->outqueue;
 rwnd = asoc->peer.rwnd;
 inflight = q->outstanding_bytes;
 flight_size = transport->flight_size;

 datasize = sctp_data_size(chunk);

 if (datasize > rwnd) {
  if (inflight > 0) {



   retval = SCTP_XMIT_RWND_FULL;
   goto finish;
  }
 }
 if (chunk->fast_retransmit != SCTP_NEED_FRTX)
  if (flight_size >= transport->cwnd) {
   retval = SCTP_XMIT_RWND_FULL;
   goto finish;
  }






 if (!sctp_sk(asoc->base.sk)->nodelay && sctp_packet_empty(packet) &&
     inflight && sctp_state(asoc, ESTABLISHED)) {
  unsigned max = transport->pathmtu - packet->overhead;
  unsigned len = chunk->skb->len + q->out_qlen;







  if ((len < max) && chunk->msg->can_delay) {
   retval = SCTP_XMIT_NAGLE_DELAY;
   goto finish;
  }
 }

finish:
 return retval;
}
