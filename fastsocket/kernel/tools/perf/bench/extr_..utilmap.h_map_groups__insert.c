
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int * maps; } ;
struct map {size_t type; struct map_groups* groups; } ;


 int maps__insert (int *,struct map*) ;

__attribute__((used)) static inline void map_groups__insert(struct map_groups *mg, struct map *map)
{
 maps__insert(&mg->maps[map->type], map);
 map->groups = mg;
}
