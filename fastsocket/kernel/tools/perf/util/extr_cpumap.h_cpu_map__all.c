
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_map {int* map; } ;



__attribute__((used)) static inline bool cpu_map__all(const struct cpu_map *map)
{
 return map ? map->map[0] == -1 : 1;
}
