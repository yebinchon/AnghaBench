
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sctp_tsnmap {scalar_t__ base_tsn; scalar_t__ len; scalar_t__ max_tsn_seen; int tsn_map; int cumulative_tsn_ack_point; } ;
struct sctp_transport {TYPE_2__* asoc; int sack_generation; } ;
typedef scalar_t__ __u32 ;
struct TYPE_3__ {int sack_generation; } ;
struct TYPE_4__ {TYPE_1__ peer; } ;


 int ENOMEM ;
 scalar_t__ TSN_lt (scalar_t__,scalar_t__) ;
 int sctp_tsnmap_grow (struct sctp_tsnmap*,scalar_t__) ;
 int sctp_tsnmap_has_gap (struct sctp_tsnmap*) ;
 int sctp_tsnmap_update (struct sctp_tsnmap*) ;
 int set_bit (scalar_t__,int ) ;

int sctp_tsnmap_mark(struct sctp_tsnmap *map, __u32 tsn,
       struct sctp_transport *trans)
{
 u16 gap;

 if (TSN_lt(tsn, map->base_tsn))
  return 0;

 gap = tsn - map->base_tsn;

 if (gap >= map->len && !sctp_tsnmap_grow(map, gap))
  return -ENOMEM;

 if (!sctp_tsnmap_has_gap(map) && gap == 0) {




  map->max_tsn_seen++;
  map->cumulative_tsn_ack_point++;
  if (trans)
   trans->sack_generation =
    trans->asoc->peer.sack_generation;
  map->base_tsn++;
 } else {





  if (TSN_lt(map->max_tsn_seen, tsn))
   map->max_tsn_seen = tsn;


  set_bit(gap, map->tsn_map);




  sctp_tsnmap_update(map);
 }

 return 0;
}
