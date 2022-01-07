
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bitmap_ipmac {int dsize; scalar_t__ members; } ;



__attribute__((used)) static inline void *
bitmap_ipmac_elem(const struct bitmap_ipmac *map, u32 id)
{
 return (void *)((char *)map->members + id * map->dsize);
}
