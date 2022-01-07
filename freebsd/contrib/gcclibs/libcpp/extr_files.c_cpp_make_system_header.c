
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct line_maps {int used; int highest_line; struct line_map* maps; } ;
struct line_map {int to_file; } ;
struct TYPE_6__ {struct line_maps* line_table; TYPE_1__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_5__ {int sysp; } ;


 int LC_RENAME ;
 int SOURCE_LINE (struct line_map const*,int ) ;
 int _cpp_do_file_change (TYPE_2__*,int ,int ,int ,int) ;

void
cpp_make_system_header (cpp_reader *pfile, int syshdr, int externc)
{
  int flags = 0;
  const struct line_maps *line_table = pfile->line_table;
  const struct line_map *map = &line_table->maps[line_table->used-1];


  if (syshdr)
    flags = 1 + (externc != 0);
  pfile->buffer->sysp = flags;
  _cpp_do_file_change (pfile, LC_RENAME, map->to_file,
         SOURCE_LINE (map, pfile->line_table->highest_line), flags);
}
