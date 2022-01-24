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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ event_loop_p ; 
 int /*<<< orphan*/  gdb_stderr ; 
 int /*<<< orphan*/ * gdb_stdlog ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/ * gdb_stdtarg ; 
 int /*<<< orphan*/  input_fd ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3 (void)
{
  if (event_loop_p)
    {
      /* FIXME - It is too heavyweight to delete and remake these
         every time you run an interpreter that needs readline.
         It is probably better to have the interpreters cache these,
         which in turn means that this needs to be moved into interpreter
         specific code. */

#if 0
      ui_file_delete (gdb_stdout);
      ui_file_delete (gdb_stderr);
      gdb_stdlog = NULL;
      gdb_stdtarg = NULL;
#endif

      FUNC1 ();
      FUNC0 (input_fd);
    }
}