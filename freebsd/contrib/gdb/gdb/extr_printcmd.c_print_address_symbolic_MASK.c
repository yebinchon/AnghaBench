#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ui_file {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,char**,int*,char**,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  free_current_contents ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ print_symbol_filename ; 

void
FUNC5 (CORE_ADDR addr, struct ui_file *stream, int do_demangle,
			char *leadin)
{
  char *name = NULL;
  char *filename = NULL;
  int unmapped = 0;
  int offset = 0;
  int line = 0;

  /* throw away both name and filename */
  struct cleanup *cleanup_chain = FUNC4 (free_current_contents, &name);
  FUNC4 (free_current_contents, &filename);

  if (FUNC0 (addr, do_demangle, &name, &offset, &filename, &line, &unmapped))
    {
      FUNC1 (cleanup_chain);
      return;
    }

  FUNC3 (leadin, stream);
  if (unmapped)
    FUNC3 ("<*", stream);
  else
    FUNC3 ("<", stream);
  FUNC3 (name, stream);
  if (offset != 0)
    FUNC2 (stream, "+%u", (unsigned int) offset);

  /* Append source filename and line number if desired.  Give specific
     line # of this addr, if we have it; else line # of the nearest symbol.  */
  if (print_symbol_filename && filename != NULL)
    {
      if (line != -1)
	FUNC2 (stream, " at %s:%d", filename, line);
      else
	FUNC2 (stream, " in %s", filename);
    }
  if (unmapped)
    FUNC3 ("*>", stream);
  else
    FUNC3 (">", stream);

  FUNC1 (cleanup_chain);
}