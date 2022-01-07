
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_transport {int param_flags; int sackfreq; int sackdelay; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int sack_needed; int sack_cnt; int tsn_map; struct sctp_transport* last_data_from; } ;
struct sctp_association {int param_flags; int sackfreq; TYPE_1__ peer; int rwnd; int a_rwnd; int sackdelay; int * timeouts; } ;
typedef int sctp_cmd_seq_t ;
typedef scalar_t__ __u32 ;


 int ENOMEM ;
 int SCTP_CHUNK (struct sctp_chunk*) ;
 int SCTP_CMD_REPLY ;
 int SCTP_CMD_TIMER_RESTART ;
 int SCTP_CMD_TIMER_STOP ;
 size_t SCTP_EVENT_TIMEOUT_SACK ;
 int SCTP_TO (size_t) ;
 int SPP_SACKDELAY_DISABLE ;
 int sctp_add_cmd_sf (int *,int ,int ) ;
 struct sctp_chunk* sctp_make_sack (struct sctp_association*) ;
 scalar_t__ sctp_tsnmap_get_ctsn (int *) ;
 scalar_t__ sctp_tsnmap_get_max_tsn_seen (int *) ;

__attribute__((used)) static int sctp_gen_sack(struct sctp_association *asoc, int force,
    sctp_cmd_seq_t *commands)
{
 __u32 ctsn, max_tsn_seen;
 struct sctp_chunk *sack;
 struct sctp_transport *trans = asoc->peer.last_data_from;
 int error = 0;

 if (force ||
     (!trans && (asoc->param_flags & SPP_SACKDELAY_DISABLE)) ||
     (trans && (trans->param_flags & SPP_SACKDELAY_DISABLE)))
  asoc->peer.sack_needed = 1;

 ctsn = sctp_tsnmap_get_ctsn(&asoc->peer.tsn_map);
 max_tsn_seen = sctp_tsnmap_get_max_tsn_seen(&asoc->peer.tsn_map);
 if (max_tsn_seen != ctsn)
  asoc->peer.sack_needed = 1;
 if (!asoc->peer.sack_needed) {
  asoc->peer.sack_cnt++;






  if (trans) {

   if (asoc->peer.sack_cnt >= trans->sackfreq - 1)
    asoc->peer.sack_needed = 1;

   asoc->timeouts[SCTP_EVENT_TIMEOUT_SACK] =
    trans->sackdelay;
  } else {

   if (asoc->peer.sack_cnt >= asoc->sackfreq - 1)
    asoc->peer.sack_needed = 1;

   asoc->timeouts[SCTP_EVENT_TIMEOUT_SACK] =
    asoc->sackdelay;
  }


  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_RESTART,
    SCTP_TO(SCTP_EVENT_TIMEOUT_SACK));
 } else {
  asoc->a_rwnd = asoc->rwnd;
  sack = sctp_make_sack(asoc);
  if (!sack)
   goto nomem;

  asoc->peer.sack_needed = 0;
  asoc->peer.sack_cnt = 0;

  sctp_add_cmd_sf(commands, SCTP_CMD_REPLY, SCTP_CHUNK(sack));


  sctp_add_cmd_sf(commands, SCTP_CMD_TIMER_STOP,
    SCTP_TO(SCTP_EVENT_TIMEOUT_SACK));
 }

 return error;
nomem:
 error = -ENOMEM;
 return error;
}
