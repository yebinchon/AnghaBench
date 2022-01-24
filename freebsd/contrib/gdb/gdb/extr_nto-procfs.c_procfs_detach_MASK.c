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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 scalar_t__ attach_flag ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ctl_fd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  procfs_ops ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (char *args, int from_tty)
{
  int siggnal = 0;

  if (from_tty)
    {
      char *exec_file = FUNC5 (0);
      if (exec_file == 0)
	exec_file = "";
      FUNC8 ("Detaching from program: %s %s\n",
			 exec_file, FUNC9 (inferior_ptid));
      FUNC4 (gdb_stdout);
    }
  if (args)
    siggnal = FUNC2 (args);

  if (siggnal)
    FUNC1 (FUNC7(), FUNC0 (inferior_ptid), 0, siggnal, 0, 0);

  FUNC3 (ctl_fd);
  ctl_fd = -1;
  FUNC6 ();
  inferior_ptid = null_ptid;
  attach_flag = 0;
  FUNC10 (&procfs_ops);	/* Pop out of handling an inferior.  */
}