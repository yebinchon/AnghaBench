
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uchar ;
typedef int source_location ;
struct TYPE_15__ {char* cur; } ;
struct TYPE_14__ {scalar_t__ in_directive; } ;
struct TYPE_16__ {TYPE_4__ out; TYPE_3__ state; TYPE_2__* context; TYPE_6__* buffer; TYPE_1__* line_table; } ;
typedef TYPE_5__ cpp_reader ;
struct TYPE_17__ {int const* cur; } ;
typedef TYPE_6__ cpp_buffer ;
struct TYPE_13__ {scalar_t__ prev; } ;
struct TYPE_12__ {int highest_line; } ;


 int CPP_DL_ERROR ;
 scalar_t__ CPP_OPTION (TYPE_5__*,int ) ;
 int _cpp_skip_block_comment (TYPE_5__*) ;
 int cpp_error_with_line (TYPE_5__*,int ,int ,int ,char*) ;
 int discard_comments ;
 int discard_comments_in_macro_exp ;
 int memcpy (char*,int const*,size_t) ;
 int skip_macro_block_comment (TYPE_5__*) ;

__attribute__((used)) static const uchar *
copy_comment (cpp_reader *pfile, const uchar *cur, int in_define)
{
  bool unterminated, copy = 0;
  source_location src_loc = pfile->line_table->highest_line;
  cpp_buffer *buffer = pfile->buffer;

  buffer->cur = cur;
  if (pfile->context->prev)
    unterminated = 0, skip_macro_block_comment (pfile);
  else
    unterminated = _cpp_skip_block_comment (pfile);

  if (unterminated)
    cpp_error_with_line (pfile, CPP_DL_ERROR, src_loc, 0,
    "unterminated comment");




  if (pfile->state.in_directive)
    {
      if (in_define)
 {
   if (CPP_OPTION (pfile, discard_comments_in_macro_exp))
     pfile->out.cur--;
   else
     copy = 1;
 }
      else
 pfile->out.cur[-1] = ' ';
    }
  else if (CPP_OPTION (pfile, discard_comments))
    pfile->out.cur--;
  else
    copy = 1;

  if (copy)
    {
      size_t len = (size_t) (buffer->cur - cur);
      memcpy (pfile->out.cur, cur, len);
      pfile->out.cur += len;
      if (unterminated)
 {
   *pfile->out.cur++ = '*';
   *pfile->out.cur++ = '/';
 }
    }

  return buffer->cur;
}
