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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  child_ops ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10 (char *args, int from_tty)
{
#ifdef ATTACH_DETACH
  {
    int siggnal = 0;
    int pid = PIDGET (inferior_ptid);

    if (from_tty)
      {
	char *exec_file = get_exec_file (0);
	if (exec_file == 0)
	  exec_file = "";
	printf_unfiltered ("Detaching from program: %s, %s\n", exec_file,
			   target_pid_to_str (pid_to_ptid (pid)));
	gdb_flush (gdb_stdout);
      }
    if (args)
      siggnal = atoi (args);

    detach (siggnal);

    inferior_ptid = null_ptid;
    unpush_target (&child_ops);
  }
#else
  FUNC3 ("This version of Unix does not support detaching a process.");
#endif
}