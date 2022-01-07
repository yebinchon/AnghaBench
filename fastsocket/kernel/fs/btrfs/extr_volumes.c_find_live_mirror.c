
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct map_lookup {TYPE_2__* stripes; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ bdev; } ;



__attribute__((used)) static int find_live_mirror(struct map_lookup *map, int first, int num,
       int optimal)
{
 int i;
 if (map->stripes[optimal].dev->bdev)
  return optimal;
 for (i = first; i < first + num; i++) {
  if (map->stripes[i].dev->bdev)
   return i;
 }



 return optimal;
}
