
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct set_telem {int dummy; } ;
struct list_set {int dsize; scalar_t__ members; } ;



__attribute__((used)) static inline struct set_telem *
list_set_telem(const struct list_set *map, u32 id)
{
 return (struct set_telem *)((void *)map->members + id * map->dsize);
}
