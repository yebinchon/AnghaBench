
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct line_map {int sysp; scalar_t__ to_file; } ;
typedef int source_location ;
struct TYPE_2__ {int src_line; int outf; scalar_t__ printed; } ;


 int SOURCE_LINE (struct line_map const*,int ) ;
 scalar_t__ alloca (size_t) ;
 unsigned char* cpp_quote_string (unsigned char*,unsigned char*,size_t) ;
 int flag_no_line_commands ;
 int fprintf (int ,char*,int,unsigned char*,char const*) ;
 int fputs (char*,int ) ;
 int line_table ;
 struct line_map* linemap_lookup (int *,int ) ;
 TYPE_1__ print ;
 int putc (char,int ) ;
 size_t strlen (scalar_t__) ;

__attribute__((used)) static void
print_line (source_location src_loc, const char *special_flags)
{

  if (print.printed)
    putc ('\n', print.outf);
  print.printed = 0;

  if (!flag_no_line_commands)
    {
      const struct line_map *map = linemap_lookup (&line_table, src_loc);

      size_t to_file_len = strlen (map->to_file);
      unsigned char *to_file_quoted =
         (unsigned char *) alloca (to_file_len * 4 + 1);
      unsigned char *p;

      print.src_line = SOURCE_LINE (map, src_loc);



      p = cpp_quote_string (to_file_quoted,
       (unsigned char *) map->to_file, to_file_len);
      *p = '\0';
      fprintf (print.outf, "# %u \"%s\"%s",
        print.src_line == 0 ? 1 : print.src_line,
        to_file_quoted, special_flags);

      if (map->sysp == 2)
 fputs (" 3 4", print.outf);
      else if (map->sysp == 1)
 fputs (" 3", print.outf);

      putc ('\n', print.outf);
    }
}
