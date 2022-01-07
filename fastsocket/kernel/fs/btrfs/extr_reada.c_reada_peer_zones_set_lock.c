
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct reada_zone {unsigned long end; int ndevs; scalar_t__ device; int locked; TYPE_1__** devs; } ;
struct TYPE_2__ {int reada_zones; } ;


 unsigned long PAGE_CACHE_SHIFT ;
 struct reada_zone* radix_tree_lookup (int *,unsigned long) ;

__attribute__((used)) static void reada_peer_zones_set_lock(struct reada_zone *zone, int lock)
{
 int i;
 unsigned long index = zone->end >> PAGE_CACHE_SHIFT;

 for (i = 0; i < zone->ndevs; ++i) {
  struct reada_zone *peer;
  peer = radix_tree_lookup(&zone->devs[i]->reada_zones, index);
  if (peer && peer->device != zone->device)
   peer->locked = lock;
 }
}
