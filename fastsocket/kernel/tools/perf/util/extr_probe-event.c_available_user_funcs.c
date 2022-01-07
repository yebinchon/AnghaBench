
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int dso; } ;


 int __show_available_funcs (struct map*) ;
 int dso__delete (int ) ;
 struct map* dso__new_map (char const*) ;
 int init_user_exec () ;
 int map__delete (struct map*) ;

__attribute__((used)) static int available_user_funcs(const char *target)
{
 struct map *map;
 int ret;

 ret = init_user_exec();
 if (ret < 0)
  return ret;

 map = dso__new_map(target);
 ret = __show_available_funcs(map);
 dso__delete(map->dso);
 map__delete(map);
 return ret;
}
