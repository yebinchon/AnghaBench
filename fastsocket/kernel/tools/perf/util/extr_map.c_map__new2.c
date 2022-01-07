
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct map {int dummy; } ;
struct kmap {int dummy; } ;
struct dso {scalar_t__ kernel; } ;
typedef enum map_type { ____Placeholder_map_type } map_type ;


 struct map* calloc (int,int) ;
 int map__init (struct map*,int,int ,int ,int ,struct dso*) ;

struct map *map__new2(u64 start, struct dso *dso, enum map_type type)
{
 struct map *map = calloc(1, (sizeof(*map) +
         (dso->kernel ? sizeof(struct kmap) : 0)));
 if (map != ((void*)0)) {



  map__init(map, type, start, 0, 0, dso);
 }

 return map;
}
