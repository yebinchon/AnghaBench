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

/* Variables and functions */
 struct ui_file* FUNC0 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  cli_uiout ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct ui_file* gdb_stdout ; 

__attribute__((used)) static int
FUNC2 (void *data)
{
  struct ui_file *stream;

  /*sync_execution = 1; */

  /* gdb_setup_readline will change gdb_stdout.  If the CLI was previously
     writing to gdb_stdout, then set it to the new gdb_stdout afterwards.  */

  stream = FUNC0 (cli_uiout, gdb_stdout);
  if (stream != gdb_stdout)
    {
      FUNC0 (cli_uiout, stream);
      stream = NULL;
    }

  FUNC1 ();

  if (stream != NULL)
    FUNC0 (cli_uiout, gdb_stdout);

  return 1;
}