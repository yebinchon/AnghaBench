
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_map {int nr; int * map; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,...) ;

size_t cpu_map__fprintf(struct cpu_map *map, FILE *fp)
{
 int i;
 size_t printed = fprintf(fp, "%d cpu%s: ",
     map->nr, map->nr > 1 ? "s" : "");
 for (i = 0; i < map->nr; ++i)
  printed += fprintf(fp, "%s%d", i ? ", " : "", map->map[i]);

 return printed + fprintf(fp, "\n");
}
