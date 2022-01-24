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
typedef  int /*<<< orphan*/  bpstat ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NO_INFERIOR ; 
 int /*<<< orphan*/  TARGET_SIGNAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ event_loop_p ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__,int) ; 
 int /*<<< orphan*/  stop_bpstat ; 
 int FUNC8 (char**) ; 
 scalar_t__ FUNC9 () ; 

void
FUNC10 (char *proc_count_exp, int from_tty)
{
  int async_exec = 0;
  ERROR_NO_INFERIOR;

  /* Find out whether we must run in the background. */
  if (proc_count_exp != NULL)
    async_exec = FUNC8 (&proc_count_exp);

  /* If we must run in the background, but the target can't do it,
     error out. */
  if (event_loop_p && async_exec && !FUNC9 ())
    FUNC3 ("Asynchronous execution not supported on this target.");

  /* If we are not asked to run in the bg, then prepare to run in the
     foreground, synchronously. */
  if (event_loop_p && !async_exec && FUNC9 ())
    {
      /* Simulate synchronous execution */
      FUNC0 ();
    }

  /* If have argument (besides '&'), set proceed count of breakpoint
     we stopped at.  */
  if (proc_count_exp != NULL)
    {
      bpstat bs = stop_bpstat;
      int num = FUNC1 (&bs);
      if (num == 0 && from_tty)
	{
	  FUNC5
	    ("Not stopped at any breakpoint; argument ignored.\n");
	}
      while (num != 0)
	{
	  FUNC7 (num,
			    FUNC4 (proc_count_exp) - 1,
			    from_tty);
	  /* set_ignore_count prints a message ending with a period.
	     So print two spaces before "Continuing.".  */
	  if (from_tty)
	    FUNC5 ("  ");
	  num = FUNC1 (&bs);
	}
    }

  if (from_tty)
    FUNC5 ("Continuing.\n");

  FUNC2 ();

  FUNC6 ((CORE_ADDR) -1, TARGET_SIGNAL_DEFAULT, 0);
}