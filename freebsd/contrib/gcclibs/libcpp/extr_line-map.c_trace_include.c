
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line_maps {unsigned int depth; } ;
struct line_map {char* to_file; } ;


 int fprintf (int ,char*,char*) ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static void
trace_include (const struct line_maps *set, const struct line_map *map)
{
  unsigned int i = set->depth;

  while (--i)
    putc ('.', stderr);
  fprintf (stderr, " %s\n", map->to_file);
}
