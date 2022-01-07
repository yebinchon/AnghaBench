
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct sctp_packet {TYPE_1__* transport; int has_cookie_echo; int has_sack; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_4__ {scalar_t__ sack_generation; scalar_t__ sack_needed; } ;
struct sctp_association {TYPE_2__ peer; int rwnd; int a_rwnd; struct timer_list* timers; } ;
typedef int sctp_xmit_t ;
struct TYPE_3__ {scalar_t__ sack_generation; struct sctp_association* asoc; } ;


 size_t SCTP_EVENT_TIMEOUT_SACK ;
 int SCTP_XMIT_OK ;
 scalar_t__ del_timer (struct timer_list*) ;
 int sctp_association_put (struct sctp_association*) ;
 scalar_t__ sctp_chunk_is_data (struct sctp_chunk*) ;
 struct sctp_chunk* sctp_make_sack (struct sctp_association*) ;
 int sctp_packet_append_chunk (struct sctp_packet*,struct sctp_chunk*) ;
 scalar_t__ timer_pending (struct timer_list*) ;

__attribute__((used)) static sctp_xmit_t sctp_packet_bundle_sack(struct sctp_packet *pkt,
        struct sctp_chunk *chunk)
{
 sctp_xmit_t retval = SCTP_XMIT_OK;




 if (sctp_chunk_is_data(chunk) && !pkt->has_sack &&
     !pkt->has_cookie_echo) {
  struct sctp_association *asoc;
  struct timer_list *timer;
  asoc = pkt->transport->asoc;
  timer = &asoc->timers[SCTP_EVENT_TIMEOUT_SACK];


  if (timer_pending(timer)) {
   struct sctp_chunk *sack;

   if (pkt->transport->sack_generation !=
       pkt->transport->asoc->peer.sack_generation)
    return retval;

   asoc->a_rwnd = asoc->rwnd;
   sack = sctp_make_sack(asoc);
   if (sack) {
    retval = sctp_packet_append_chunk(pkt, sack);
    asoc->peer.sack_needed = 0;
    if (del_timer(timer))
     sctp_association_put(asoc);
   }
  }
 }
 return retval;
}
