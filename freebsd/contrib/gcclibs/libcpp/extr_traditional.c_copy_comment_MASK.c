#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uchar ;
typedef  int /*<<< orphan*/  source_location ;
struct TYPE_15__ {char* cur; } ;
struct TYPE_14__ {scalar_t__ in_directive; } ;
struct TYPE_16__ {TYPE_4__ out; TYPE_3__ state; TYPE_2__* context; TYPE_6__* buffer; TYPE_1__* line_table; } ;
typedef  TYPE_5__ cpp_reader ;
struct TYPE_17__ {int /*<<< orphan*/  const* cur; } ;
typedef  TYPE_6__ cpp_buffer ;
struct TYPE_13__ {scalar_t__ prev; } ;
struct TYPE_12__ {int /*<<< orphan*/  highest_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  discard_comments ; 
 int /*<<< orphan*/  discard_comments_in_macro_exp ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 

__attribute__((used)) static const uchar *
FUNC5 (cpp_reader *pfile, const uchar *cur, int in_define)
{
  bool unterminated, copy = false;
  source_location src_loc = pfile->line_table->highest_line;
  cpp_buffer *buffer = pfile->buffer;

  buffer->cur = cur;
  if (pfile->context->prev)
    unterminated = false, FUNC4 (pfile);
  else
    unterminated = FUNC1 (pfile);
    
  if (unterminated)
    FUNC2 (pfile, CPP_DL_ERROR, src_loc, 0,
			 "unterminated comment");

  /* Comments in directives become spaces so that tokens are properly
     separated when the ISO preprocessor re-lexes the line.  The
     exception is #define.  */
  if (pfile->state.in_directive)
    {
      if (in_define)
	{
	  if (FUNC0 (pfile, discard_comments_in_macro_exp))
	    pfile->out.cur--;
	  else
	    copy = true;
	}
      else
	pfile->out.cur[-1] = ' ';
    }
  else if (FUNC0 (pfile, discard_comments))
    pfile->out.cur--;
  else
    copy = true;

  if (copy)
    {
      size_t len = (size_t) (buffer->cur - cur);
      FUNC3 (pfile->out.cur, cur, len);
      pfile->out.cur += len;
      if (unterminated)
	{
	  *pfile->out.cur++ = '*';
	  *pfile->out.cur++ = '/';
	}
    }

  return buffer->cur;
}