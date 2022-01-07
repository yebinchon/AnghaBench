
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int * maps; } ;
struct map {size_t type; } ;


 int maps__remove (int *,struct map*) ;

__attribute__((used)) static inline void map_groups__remove(struct map_groups *mg, struct map *map)
{
 maps__remove(&mg->maps[map->type], map);
}
