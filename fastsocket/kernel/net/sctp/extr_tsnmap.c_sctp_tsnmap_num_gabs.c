
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_tsnmap_iter {int dummy; } ;
struct sctp_tsnmap {int dummy; } ;
struct sctp_gap_ack_block {void* end; void* start; } ;
typedef int __u16 ;


 int SCTP_MAX_GABS ;
 void* htons (int) ;
 scalar_t__ sctp_tsnmap_has_gap (struct sctp_tsnmap*) ;
 int sctp_tsnmap_iter_init (struct sctp_tsnmap*,struct sctp_tsnmap_iter*) ;
 scalar_t__ sctp_tsnmap_next_gap_ack (struct sctp_tsnmap*,struct sctp_tsnmap_iter*,int*,int*) ;

__u16 sctp_tsnmap_num_gabs(struct sctp_tsnmap *map,
      struct sctp_gap_ack_block *gabs)
{
 struct sctp_tsnmap_iter iter;
 int ngaps = 0;


 if (sctp_tsnmap_has_gap(map)) {
  __u16 start = 0, end = 0;
  sctp_tsnmap_iter_init(map, &iter);
  while (sctp_tsnmap_next_gap_ack(map, &iter,
      &start,
      &end)) {

   gabs[ngaps].start = htons(start);
   gabs[ngaps].end = htons(end);
   ngaps++;
   if (ngaps >= SCTP_MAX_GABS)
    break;
  }
 }
 return ngaps;
}
