
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uchar ;
struct TYPE_4__ {int saved_line_base; int const* saved_rlimit; int const* saved_cur; TYPE_2__* overlaid_buffer; TYPE_2__* buffer; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_5__ {int need_line; int const* rlimit; int const* line_base; int const* cur; int next_line; } ;
typedef TYPE_2__ cpp_buffer ;



void
_cpp_overlay_buffer (cpp_reader *pfile, const uchar *start, size_t len)
{
  cpp_buffer *buffer = pfile->buffer;

  pfile->overlaid_buffer = buffer;
  pfile->saved_cur = buffer->cur;
  pfile->saved_rlimit = buffer->rlimit;
  pfile->saved_line_base = buffer->next_line;
  buffer->need_line = 0;

  buffer->cur = start;
  buffer->line_base = start;
  buffer->rlimit = start + len;
}
