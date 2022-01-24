#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* buffer; } ;
typedef  TYPE_2__ cpp_reader ;
struct TYPE_15__ {int /*<<< orphan*/  preprocessed; scalar_t__ directives_only; scalar_t__ traditional; } ;
struct TYPE_14__ {int /*<<< orphan*/  outf; scalar_t__ printed; } ;
struct TYPE_12__ {scalar_t__ prev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  dump_macro ; 
 char flag_dump_macros ; 
 scalar_t__ flag_no_output ; 
 TYPE_6__ print ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7 (cpp_reader *pfile)
{
  /* A successful cpp_read_main_file guarantees that we can call
     cpp_scan_nooutput or cpp_get_token next.  */
  if (flag_no_output)
    {
      /* Scan -included buffers, then the main file.  */
      while (pfile->buffer->prev)
	FUNC2 (pfile);
      FUNC2 (pfile);
    }
  else if (FUNC1 (pfile)->traditional)
    FUNC6 (pfile);
  else if (FUNC1 (pfile)->directives_only
	   && !FUNC1 (pfile)->preprocessed)
    FUNC5 (pfile);
  else
    FUNC4 (pfile);

  /* -dM command line option.  Should this be elsewhere?  */
  if (flag_dump_macros == 'M')
    FUNC0 (pfile, dump_macro, NULL);

  /* Flush any pending output.  */
  if (print.printed)
    FUNC3 ('\n', print.outf);
}