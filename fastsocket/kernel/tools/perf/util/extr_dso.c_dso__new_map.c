
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dummy; } ;
struct dso {int dummy; } ;


 int MAP__FUNCTION ;
 struct dso* dso__new (char const*) ;
 struct map* map__new2 (int ,struct dso*,int ) ;

struct map *dso__new_map(const char *name)
{
 struct map *map = ((void*)0);
 struct dso *dso = dso__new(name);

 if (dso)
  map = map__new2(0, dso, MAP__FUNCTION);

 return map;
}
