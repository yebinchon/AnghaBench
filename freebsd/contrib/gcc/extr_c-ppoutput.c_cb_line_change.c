
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct line_map {int dummy; } ;
typedef int source_location ;
struct TYPE_4__ {scalar_t__ type; int src_loc; } ;
typedef TYPE_1__ cpp_token ;
typedef int cpp_reader ;
struct TYPE_5__ {int printed; int outf; scalar_t__ source; scalar_t__ prev; } ;


 scalar_t__ CPP_EOF ;
 int CPP_OPTION (int *,int ) ;
 int SOURCE_COLUMN (struct line_map const*,int ) ;
 int line_table ;
 struct line_map* linemap_lookup (int *,int ) ;
 int maybe_print_line (int ) ;
 TYPE_2__ print ;
 int putc (char,int ) ;
 int traditional ;

__attribute__((used)) static void
cb_line_change (cpp_reader *pfile, const cpp_token *token,
  int parsing_args)
{
  source_location src_loc = token->src_loc;

  if (token->type == CPP_EOF || parsing_args)
    return;

  maybe_print_line (src_loc);
  print.prev = 0;
  print.source = 0;






  if (!CPP_OPTION (pfile, traditional))
    {
      const struct line_map *map = linemap_lookup (&line_table, src_loc);
      int spaces = SOURCE_COLUMN (map, src_loc) - 2;
      print.printed = 1;

      while (-- spaces >= 0)
 putc (' ', print.outf);
    }
}
