
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_maps {int used; struct line_map* maps; } ;
struct line_map {char* to_file; } ;


 struct line_map* INCLUDED_FROM (struct line_maps*,struct line_map*) ;
 int MAIN_FILE_P (struct line_map*) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void
linemap_check_files_exited (struct line_maps *set)
{
  struct line_map *map;


  for (map = &set->maps[set->used - 1]; ! MAIN_FILE_P (map);
       map = INCLUDED_FROM (set, map))
    fprintf (stderr, "line-map.c: file \"%s\" entered but not left\n",
      map->to_file);
}
