
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;


 struct map* malloc (int) ;
 int memcpy (struct map*,struct map*,int) ;

struct map *map__clone(struct map *self)
{
 struct map *map = malloc(sizeof(*self));

 if (!map)
  return ((void*)0);

 memcpy(map, self, sizeof(*self));

 return map;
}
