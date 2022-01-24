#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* line_table; TYPE_3__* buffer; } ;
typedef  TYPE_2__ cpp_reader ;
struct TYPE_14__ {size_t cur_note; scalar_t__ cur; scalar_t__ next_line; scalar_t__ rlimit; scalar_t__ line_base; TYPE_4__* notes; } ;
typedef  TYPE_3__ cpp_buffer ;
struct TYPE_15__ {scalar_t__ pos; char type; } ;
typedef  TYPE_4__ _cpp_line_note ;
struct TYPE_12__ {int /*<<< orphan*/  highest_line; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  CPP_DL_PEDWARN ; 
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__* _cpp_trigraph_map ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,char*,...) ; 
 int /*<<< orphan*/  trigraphs ; 
 scalar_t__ FUNC5 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  warn_trigraphs ; 

void
FUNC6 (cpp_reader *pfile, int in_comment)
{
  cpp_buffer *buffer = pfile->buffer;

  for (;;)
    {
      _cpp_line_note *note = &buffer->notes[buffer->cur_note];
      unsigned int col;

      if (note->pos > buffer->cur)
	break;

      buffer->cur_note++;
      col = FUNC0 (buffer, note->pos + 1);

      if (note->type == '\\' || note->type == ' ')
	{
	  if (note->type == ' ' && !in_comment)
	    FUNC4 (pfile, CPP_DL_WARNING, pfile->line_table->highest_line, col,
				 "backslash and newline separated by space");

	  if (buffer->next_line > buffer->rlimit)
	    {
	      FUNC4 (pfile, CPP_DL_PEDWARN, pfile->line_table->highest_line, col,
				   "backslash-newline at end of file");
	      /* Prevent "no newline at end of file" warning.  */
	      buffer->next_line = buffer->rlimit;
	    }

	  buffer->line_base = note->pos;
	  FUNC1 (pfile, 0);
	}
      else if (_cpp_trigraph_map[note->type])
	{
	  if (FUNC2 (pfile, warn_trigraphs)
	      && (!in_comment || FUNC5 (pfile, note)))
	    {
	      if (FUNC2 (pfile, trigraphs))
		FUNC4 (pfile, CPP_DL_WARNING, pfile->line_table->highest_line, col,
				     "trigraph ??%c converted to %c",
				     note->type,
				     (int) _cpp_trigraph_map[note->type]);
	      else
		{
		  FUNC4 
		    (pfile, CPP_DL_WARNING, pfile->line_table->highest_line, col,
		     "trigraph ??%c ignored, use -trigraphs to enable",
		     note->type);
		}
	    }
	}
      else
	FUNC3 ();
    }
}