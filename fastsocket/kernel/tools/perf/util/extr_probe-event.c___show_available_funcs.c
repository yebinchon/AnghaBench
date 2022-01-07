
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {int type; int dso; } ;


 int EINVAL ;
 int dso__fprintf_symbols_by_name (int ,int ,int ) ;
 int dso__sort_by_name (int ,int ) ;
 int dso__sorted_by_name (int ,int ) ;
 int filter_available_functions ;
 scalar_t__ map__load (struct map*,int ) ;
 int pr_err (char*) ;
 int stdout ;

__attribute__((used)) static int __show_available_funcs(struct map *map)
{
 if (map__load(map, filter_available_functions)) {
  pr_err("Failed to load map.\n");
  return -EINVAL;
 }
 if (!dso__sorted_by_name(map->dso, map->type))
  dso__sort_by_name(map->dso, map->type);

 dso__fprintf_symbols_by_name(map->dso, map->type, stdout);
 return 0;
}
