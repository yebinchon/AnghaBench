
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;
struct func_map {unsigned long long addr; } ;


 struct func_map* find_func (struct pevent*,unsigned long long) ;

unsigned long long
pevent_find_function_address(struct pevent *pevent, unsigned long long addr)
{
 struct func_map *map;

 map = find_func(pevent, addr);
 if (!map)
  return 0;

 return map->addr;
}
