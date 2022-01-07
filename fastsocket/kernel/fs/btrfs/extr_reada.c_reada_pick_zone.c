
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct reada_zone {int end; scalar_t__ elems; int refcnt; int start; scalar_t__ locked; } ;
struct btrfs_device {struct reada_zone* reada_curr_zone; int reada_next; int reada_zones; } ;


 int PAGE_CACHE_SHIFT ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int radix_tree_gang_lookup (int *,void**,unsigned long,int) ;
 int reada_peer_zones_set_lock (struct reada_zone*,int) ;
 int reada_zone_release ;

__attribute__((used)) static int reada_pick_zone(struct btrfs_device *dev)
{
 struct reada_zone *top_zone = ((void*)0);
 struct reada_zone *top_locked_zone = ((void*)0);
 u64 top_elems = 0;
 u64 top_locked_elems = 0;
 unsigned long index = 0;
 int ret;

 if (dev->reada_curr_zone) {
  reada_peer_zones_set_lock(dev->reada_curr_zone, 0);
  kref_put(&dev->reada_curr_zone->refcnt, reada_zone_release);
  dev->reada_curr_zone = ((void*)0);
 }

 while (1) {
  struct reada_zone *zone;

  ret = radix_tree_gang_lookup(&dev->reada_zones,
          (void **)&zone, index, 1);
  if (ret == 0)
   break;
  index = (zone->end >> PAGE_CACHE_SHIFT) + 1;
  if (zone->locked) {
   if (zone->elems > top_locked_elems) {
    top_locked_elems = zone->elems;
    top_locked_zone = zone;
   }
  } else {
   if (zone->elems > top_elems) {
    top_elems = zone->elems;
    top_zone = zone;
   }
  }
 }
 if (top_zone)
  dev->reada_curr_zone = top_zone;
 else if (top_locked_zone)
  dev->reada_curr_zone = top_locked_zone;
 else
  return 0;

 dev->reada_next = dev->reada_curr_zone->start;
 kref_get(&dev->reada_curr_zone->refcnt);
 reada_peer_zones_set_lock(dev->reada_curr_zone, 1);

 return 1;
}
