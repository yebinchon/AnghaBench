
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct line_map {char* to_file; } ;
typedef scalar_t__ source_location ;
struct TYPE_4__ {int line_table; } ;
typedef TYPE_1__ cpp_reader ;


 scalar_t__ CPP_OPTION (TYPE_1__*,int ) ;
 unsigned int SOURCE_COLUMN (struct line_map const*,scalar_t__) ;
 unsigned int SOURCE_LINE (struct line_map const*,scalar_t__) ;
 int fprintf (int ,char*,char*,...) ;
 int fputc (char,int ) ;
 struct line_map* linemap_lookup (int ,scalar_t__) ;
 int linemap_print_containing_files (int ,struct line_map const*) ;
 char* progname ;
 int show_column ;
 int stderr ;

__attribute__((used)) static void
print_location (cpp_reader *pfile, source_location line, unsigned int col)
{
  if (line == 0)
    fprintf (stderr, "%s: ", progname);
  else
    {
      const struct line_map *map;
      unsigned int lin;

      map = linemap_lookup (pfile->line_table, line);
      linemap_print_containing_files (pfile->line_table, map);

      lin = SOURCE_LINE (map, line);
      if (col == 0)
 {
   col = SOURCE_COLUMN (map, line);
   if (col == 0)
     col = 1;
 }

      if (lin == 0)
 fprintf (stderr, "%s:", map->to_file);
      else if (CPP_OPTION (pfile, show_column) == 0)
 fprintf (stderr, "%s:%u:", map->to_file, lin);
      else
 fprintf (stderr, "%s:%u:%u:", map->to_file, lin, col);

      fputc (' ', stderr);
    }
}
