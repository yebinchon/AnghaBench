
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sctp_tsnmap {scalar_t__ cumulative_tsn_ack_point; scalar_t__ max_tsn_seen; scalar_t__ base_tsn; scalar_t__ len; int tsn_map; } ;
typedef scalar_t__ __u32 ;
typedef scalar_t__ __u16 ;


 scalar_t__ test_bit (scalar_t__,int ) ;

__u16 sctp_tsnmap_pending(struct sctp_tsnmap *map)
{
 __u32 cum_tsn = map->cumulative_tsn_ack_point;
 __u32 max_tsn = map->max_tsn_seen;
 __u32 base_tsn = map->base_tsn;
 __u16 pending_data;
 u32 gap, i;

 pending_data = max_tsn - cum_tsn;
 gap = max_tsn - base_tsn;

 if (gap == 0 || gap >= map->len)
  goto out;

 for (i = 0; i < gap+1; i++) {
  if (test_bit(i, map->tsn_map))
   pending_data--;
 }

out:
 return pending_data;
}
