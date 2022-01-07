
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* line_table; TYPE_3__* buffer; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_14__ {size_t cur_note; scalar_t__ cur; scalar_t__ next_line; scalar_t__ rlimit; scalar_t__ line_base; TYPE_4__* notes; } ;
typedef TYPE_3__ cpp_buffer ;
struct TYPE_15__ {scalar_t__ pos; char type; } ;
typedef TYPE_4__ _cpp_line_note ;
struct TYPE_12__ {int highest_line; } ;


 unsigned int CPP_BUF_COLUMN (TYPE_3__*,scalar_t__) ;
 int CPP_DL_PEDWARN ;
 int CPP_DL_WARNING ;
 int CPP_INCREMENT_LINE (TYPE_2__*,int ) ;
 scalar_t__ CPP_OPTION (TYPE_2__*,int ) ;
 scalar_t__* _cpp_trigraph_map ;
 int abort () ;
 int cpp_error_with_line (TYPE_2__*,int ,int ,unsigned int,char*,...) ;
 int trigraphs ;
 scalar_t__ warn_in_comment (TYPE_2__*,TYPE_4__*) ;
 int warn_trigraphs ;

void
_cpp_process_line_notes (cpp_reader *pfile, int in_comment)
{
  cpp_buffer *buffer = pfile->buffer;

  for (;;)
    {
      _cpp_line_note *note = &buffer->notes[buffer->cur_note];
      unsigned int col;

      if (note->pos > buffer->cur)
 break;

      buffer->cur_note++;
      col = CPP_BUF_COLUMN (buffer, note->pos + 1);

      if (note->type == '\\' || note->type == ' ')
 {
   if (note->type == ' ' && !in_comment)
     cpp_error_with_line (pfile, CPP_DL_WARNING, pfile->line_table->highest_line, col,
     "backslash and newline separated by space");

   if (buffer->next_line > buffer->rlimit)
     {
       cpp_error_with_line (pfile, CPP_DL_PEDWARN, pfile->line_table->highest_line, col,
       "backslash-newline at end of file");

       buffer->next_line = buffer->rlimit;
     }

   buffer->line_base = note->pos;
   CPP_INCREMENT_LINE (pfile, 0);
 }
      else if (_cpp_trigraph_map[note->type])
 {
   if (CPP_OPTION (pfile, warn_trigraphs)
       && (!in_comment || warn_in_comment (pfile, note)))
     {
       if (CPP_OPTION (pfile, trigraphs))
  cpp_error_with_line (pfile, CPP_DL_WARNING, pfile->line_table->highest_line, col,
         "trigraph ??%c converted to %c",
         note->type,
         (int) _cpp_trigraph_map[note->type]);
       else
  {
    cpp_error_with_line
      (pfile, CPP_DL_WARNING, pfile->line_table->highest_line, col,
       "trigraph ??%c ignored, use -trigraphs to enable",
       note->type);
  }
     }
 }
      else
 abort ();
    }
}
