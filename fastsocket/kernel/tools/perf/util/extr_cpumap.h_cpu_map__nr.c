
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_map {int nr; } ;



__attribute__((used)) static inline int cpu_map__nr(const struct cpu_map *map)
{
 return map ? map->nr : 1;
}
