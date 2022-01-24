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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  procfs_ops ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7 (char *args, int from_tty)
{
  char *exec_file;
  int   signo = 0;

  if (from_tty)
    {
      exec_file = FUNC3 (0);
      if (exec_file == 0)
	exec_file = "";
      FUNC4 ("Detaching from program: %s %s\n",
	      exec_file, FUNC5 (inferior_ptid));
      FUNC2 (stdout);
    }
  if (args)
    signo = FUNC0 (args);

  FUNC1 (signo);
  inferior_ptid = null_ptid;
  FUNC6 (&procfs_ops);		/* Pop out of handling an inferior */
}