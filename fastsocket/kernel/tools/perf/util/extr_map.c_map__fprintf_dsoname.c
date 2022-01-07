
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct map {TYPE_1__* dso; } ;
struct TYPE_4__ {scalar_t__ show_kernel_path; } ;
struct TYPE_3__ {char* name; char* long_name; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,char const*) ;
 TYPE_2__ symbol_conf ;

size_t map__fprintf_dsoname(struct map *map, FILE *fp)
{
 const char *dsoname = "[unknown]";

 if (map && map->dso && (map->dso->name || map->dso->long_name)) {
  if (symbol_conf.show_kernel_path && map->dso->long_name)
   dsoname = map->dso->long_name;
  else if (map->dso->name)
   dsoname = map->dso->name;
 }

 return fprintf(fp, "%s", dsoname);
}
