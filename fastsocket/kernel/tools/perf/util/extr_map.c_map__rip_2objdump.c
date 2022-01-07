
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct map {int (* unmap_ip ) (struct map*,int ) ;TYPE_1__* dso; } ;
struct TYPE_2__ {scalar_t__ adjust_symbols; } ;


 int stub1 (struct map*,int ) ;

u64 map__rip_2objdump(struct map *map, u64 rip)
{
 u64 addr = map->dso->adjust_symbols ?
   map->unmap_ip(map, rip) :
   rip;
 return addr;
}
