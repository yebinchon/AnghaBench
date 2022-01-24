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
 int /*<<< orphan*/ * deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gdb_stdout ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ target_has_stack ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  target_longname ; 

__attribute__((used)) static void
FUNC9 (char *arg, int from_tty)
{
  /* FIXME:  This should not really be inferior_ptid (or target_has_execution).
     It should be a distinct flag that indicates that a target is active, cuz
     some targets don't have processes! */

  if (FUNC6 (inferior_ptid, null_ptid))
    FUNC0 ("The program is not being run.");
  if (!FUNC7 ("Kill the program being debugged? "))
    FUNC0 ("Not confirmed.");
  FUNC8 ();

  FUNC3 ();		/* Destroy thread info */

  /* Killing off the inferior can leave us with a core file.  If so,
     print the state we are left in.  */
  if (target_has_stack)
    {
      FUNC5 ("In %s,\n", target_longname);
      if (deprecated_selected_frame == NULL)
	FUNC1 ("No selected stack frame.\n", gdb_stdout);
      else
	FUNC4 (deprecated_selected_frame,
			   FUNC2 (deprecated_selected_frame), 1);
    }
}