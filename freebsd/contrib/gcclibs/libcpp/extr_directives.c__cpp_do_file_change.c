
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct line_map {int to_line; } ;
typedef enum lc_reason { ____Placeholder_lc_reason } lc_reason ;
struct TYPE_5__ {int (* file_change ) (TYPE_2__*,struct line_map const*) ;} ;
struct TYPE_6__ {TYPE_1__ cb; int line_table; } ;
typedef TYPE_2__ cpp_reader ;


 struct line_map* linemap_add (int ,int,unsigned int,char const*,unsigned int) ;
 int linemap_line_start (int ,int ,int) ;
 int stub1 (TYPE_2__*,struct line_map const*) ;

void
_cpp_do_file_change (cpp_reader *pfile, enum lc_reason reason,
       const char *to_file, unsigned int file_line,
       unsigned int sysp)
{
  const struct line_map *map = linemap_add (pfile->line_table, reason, sysp,
         to_file, file_line);
  if (map != ((void*)0))
    linemap_line_start (pfile->line_table, map->to_line, 127);

  if (pfile->cb.file_change)
    pfile->cb.file_change (pfile, map);
}
