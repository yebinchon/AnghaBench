
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_tsnmap {int tsn_map; scalar_t__ len; } ;


 int kfree (int ) ;

void sctp_tsnmap_free(struct sctp_tsnmap *map)
{
 map->len = 0;
 kfree(map->tsn_map);
}
