
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_line_info {int isa; int flags; scalar_t__ column; int filenum; int line; } ;


 scalar_t__ DEBUG_DWARF2 ;
 int DWARF2_FLAG_IS_STMT ;
 int as_where (char**,int *) ;
 struct dwarf2_line_info current ;
 scalar_t__ debug_type ;
 int get_filenum (char*,int ) ;

void
dwarf2_where (struct dwarf2_line_info *line)
{
  if (debug_type == DEBUG_DWARF2)
    {
      char *filename;
      as_where (&filename, &line->line);
      line->filenum = get_filenum (filename, 0);
      line->column = 0;
      line->flags = DWARF2_FLAG_IS_STMT;
      line->isa = current.isa;
    }
  else
    *line = current;
}
