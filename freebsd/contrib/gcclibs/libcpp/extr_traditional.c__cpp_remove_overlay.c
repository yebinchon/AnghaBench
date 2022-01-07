
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* overlaid_buffer; int saved_line_base; int saved_rlimit; int saved_cur; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_5__ {int need_line; int line_base; int rlimit; int cur; } ;
typedef TYPE_2__ cpp_buffer ;



void
_cpp_remove_overlay (cpp_reader *pfile)
{
  cpp_buffer *buffer = pfile->overlaid_buffer;

  buffer->cur = pfile->saved_cur;
  buffer->rlimit = pfile->saved_rlimit;
  buffer->line_base = pfile->saved_line_base;
  buffer->need_line = 1;

  pfile->overlaid_buffer = ((void*)0);
}
