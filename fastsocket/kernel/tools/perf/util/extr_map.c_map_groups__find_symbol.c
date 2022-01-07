
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int symbol_filter_t ;
struct symbol {int dummy; } ;
struct map_groups {int dummy; } ;
struct map {int (* map_ip ) (struct map*,int ) ;} ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 struct symbol* map__find_symbol (struct map*,int ,int ) ;
 struct map* map_groups__find (struct map_groups*,int,int ) ;
 int stub1 (struct map*,int ) ;

struct symbol *map_groups__find_symbol(struct map_groups *mg,
           enum map_type type, u64 addr,
           struct map **mapp,
           symbol_filter_t filter)
{
 struct map *map = map_groups__find(mg, type, addr);

 if (map != ((void*)0)) {
  if (mapp != ((void*)0))
   *mapp = map;
  return map__find_symbol(map, map->map_ip(map, addr), filter);
 }

 return ((void*)0);
}
