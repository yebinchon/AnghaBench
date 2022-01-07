
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line_map {int dummy; } ;
typedef int source_location ;
struct TYPE_2__ {int src_line; int outf; scalar_t__ printed; } ;


 int SOURCE_LINE (struct line_map const*,int ) ;
 int line_table ;
 struct line_map* linemap_lookup (int *,int ) ;
 TYPE_1__ print ;
 int print_line (int ,char*) ;
 int putc (char,int ) ;

__attribute__((used)) static void
maybe_print_line (source_location src_loc)
{
  const struct line_map *map = linemap_lookup (&line_table, src_loc);
  int src_line = SOURCE_LINE (map, src_loc);

  if (print.printed)
    {
      putc ('\n', print.outf);
      print.src_line++;
      print.printed = 0;
    }

  if (src_line >= print.src_line && src_line < print.src_line + 8)
    {
      while (src_line > print.src_line)
 {
   putc ('\n', print.outf);
   print.src_line++;
 }
    }
  else
    print_line (src_loc, "");
}
