
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {long* lowmem_reserve; unsigned long* watermark; TYPE_1__* free_area; } ;
struct TYPE_2__ {int nr_free; } ;


 int ALLOC_HARDER ;
 int ALLOC_HIGH ;
 int WARN_ON (int) ;
 size_t WMARK_MIN ;
 int pageblock_order ;

__attribute__((used)) static bool __zone_watermark_ok(struct zone *z, int order, unsigned long mark,
        int classzone_idx, int alloc_flags, long free_pages)
{

 long min = mark;
 int o;

 free_pages -= (1 << order) + 1;
 if (alloc_flags & ALLOC_HIGH)
  min -= min / 2;
 if (alloc_flags & ALLOC_HARDER)
  min -= min / 4;

 if (free_pages <= min + z->lowmem_reserve[classzone_idx])
  return 0;
 if (!order)
  return 1;
 min = mark - z->watermark[WMARK_MIN];
 WARN_ON(min < 0);
 if (alloc_flags & ALLOC_HIGH)
  min -= min / 2;
 if (alloc_flags & ALLOC_HARDER)
  min -= min / 4;
 for (o = 0; o < order; o++) {

  free_pages -= z->free_area[o].nr_free << o;


  if (o < (pageblock_order >> 2))
   min >>= 1;

  if (free_pages <= min)
   return 0;
 }
 return 1;
}
