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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,...) ; 
 int /*<<< orphan*/  procfs_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (char *args, int from_tty)
{
  char *exec_file;
  int pid;

  if (!args)
    FUNC3 ("process-id to attach");

  pid = FUNC0 (args);

  if (pid == FUNC6 ())
    FUNC2 ("Attaching GDB to itself is not a good idea...");

  if (from_tty)
    {
      exec_file = (char *) FUNC5 (0);

      if (exec_file)
	FUNC8 ("Attaching to program `%s', %s\n", exec_file,
			   FUNC10 (FUNC7 (pid)));
      else
	FUNC8 ("Attaching to %s\n",
			   FUNC10 (FUNC7 (pid)));

      FUNC4 (gdb_stdout);
    }
  inferior_ptid = FUNC1 (FUNC7 (pid));
  FUNC9 (&procfs_ops);
}