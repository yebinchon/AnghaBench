#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ui_file {int dummy; } ;
struct TYPE_2__ {struct ui_file* targ; struct ui_file* log; struct ui_file* err; struct ui_file* out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,int /*<<< orphan*/ *) ; 
 struct ui_file* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct ui_file* gdb_stderr ; 
 struct ui_file* gdb_stdlog ; 
 struct ui_file* gdb_stdout ; 
 struct ui_file* gdb_stdtarg ; 
 int /*<<< orphan*/ * logging_filename ; 
 scalar_t__ logging_overwrite ; 
 int /*<<< orphan*/  logging_redirect ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * saved_filename ; 
 TYPE_1__ saved_output ; 
 struct ui_file* FUNC3 (struct ui_file*,int /*<<< orphan*/ ,struct ui_file*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  uiout ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (int from_tty)
{
  struct ui_file *output;

  if (saved_filename != NULL)
    {
      FUNC0 (gdb_stdout, "Already logging to %s.\n",
			  saved_filename);
      return;
    }

  output = FUNC1 (logging_filename, logging_overwrite ? "w" : "a");
  if (output == NULL)
    FUNC2 ("set logging");

  /* Redirects everything to gdb_stdout while this is running.  */
  if (!logging_redirect)
    {
      output = FUNC3 (gdb_stdout, 0, output, 1);
      if (output == NULL)
	FUNC2 ("set logging");
      if (from_tty)
	FUNC0 (gdb_stdout, "Copying output to %s.\n",
			    logging_filename);
    }
  else if (from_tty)
    FUNC0 (gdb_stdout, "Redirecting output to %s.\n",
			logging_filename);

  saved_filename = FUNC6 (logging_filename);
  saved_output.out = gdb_stdout;
  saved_output.err = gdb_stderr;
  saved_output.log = gdb_stdlog;
  saved_output.targ = gdb_stdtarg;

  gdb_stdout = output;
  gdb_stderr = output;
  gdb_stdlog = output;
  gdb_stdtarg = output;

  if (FUNC4 (uiout, gdb_stdout) < 0)
    FUNC5 ("Current output protocol does not support redirection");
}