
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sctp_tsnmap {scalar_t__ base_tsn; scalar_t__ max_tsn_seen; scalar_t__ len; int tsn_map; int cumulative_tsn_ack_point; } ;
typedef scalar_t__ __u32 ;


 scalar_t__ SCTP_TSN_MAP_SIZE ;
 scalar_t__ TSN_lt (scalar_t__,scalar_t__) ;
 int bitmap_shift_right (int ,int ,scalar_t__,scalar_t__) ;
 int bitmap_zero (int ,scalar_t__) ;
 int sctp_tsnmap_update (struct sctp_tsnmap*) ;

void sctp_tsnmap_skip(struct sctp_tsnmap *map, __u32 tsn)
{
 u32 gap;

 if (TSN_lt(tsn, map->base_tsn))
  return;
 if (!TSN_lt(tsn, map->base_tsn + SCTP_TSN_MAP_SIZE))
  return;


 if (TSN_lt(map->max_tsn_seen, tsn))
  map->max_tsn_seen = tsn;

 gap = tsn - map->base_tsn + 1;

 map->base_tsn += gap;
 map->cumulative_tsn_ack_point += gap;
 if (gap >= map->len) {



  bitmap_zero(map->tsn_map, map->len);
 } else {



  bitmap_shift_right(map->tsn_map, map->tsn_map, gap, map->len);
  sctp_tsnmap_update(map);
 }
}
