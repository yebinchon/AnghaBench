
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_maps {scalar_t__ last_listed; } ;
struct line_map {scalar_t__ included_from; char* to_file; } ;


 struct line_map* INCLUDED_FROM (struct line_maps*,struct line_map const*) ;
 int LAST_SOURCE_LINE (struct line_map const*) ;
 scalar_t__ MAIN_FILE_P (struct line_map const*) ;
 char* _ (char*) ;
 int fprintf (int ,char*,char*,int) ;
 int fputs (char*,int ) ;
 int stderr ;

void
linemap_print_containing_files (struct line_maps *set,
    const struct line_map *map)
{
  if (MAIN_FILE_P (map) || set->last_listed == map->included_from)
    return;

  set->last_listed = map->included_from;
  map = INCLUDED_FROM (set, map);

  fprintf (stderr, _("In file included from %s:%u"),
    map->to_file, LAST_SOURCE_LINE (map));

  while (! MAIN_FILE_P (map))
    {
      map = INCLUDED_FROM (set, map);
      fprintf (stderr, _(",\n                 from %s:%u"),
        map->to_file, LAST_SOURCE_LINE (map));
    }

  fputs (":\n", stderr);
}
