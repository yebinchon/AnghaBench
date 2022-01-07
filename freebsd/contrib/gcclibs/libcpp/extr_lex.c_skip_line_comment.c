
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* line_table; TYPE_3__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_8__ {char* cur; } ;
typedef TYPE_3__ cpp_buffer ;
struct TYPE_6__ {unsigned int highest_line; } ;


 int _cpp_process_line_notes (TYPE_2__*,int) ;

__attribute__((used)) static int
skip_line_comment (cpp_reader *pfile)
{
  cpp_buffer *buffer = pfile->buffer;
  unsigned int orig_line = pfile->line_table->highest_line;

  while (*buffer->cur != '\n')
    buffer->cur++;

  _cpp_process_line_notes (pfile, 1);
  return orig_line != pfile->line_table->highest_line;
}
