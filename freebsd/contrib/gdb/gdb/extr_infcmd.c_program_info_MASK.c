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

/* Variables and functions */
 scalar_t__ TARGET_SIGNAL_0 ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  stop_bpstat ; 
 scalar_t__ stop_pc ; 
 scalar_t__ stop_signal ; 
 scalar_t__ stop_step ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  target_has_execution ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static void
FUNC6 (char *args, int from_tty)
{
  bpstat bs = stop_bpstat;
  int num = FUNC0 (&bs);

  if (!target_has_execution)
    {
      FUNC2 ("The program being debugged is not being run.\n");
      return;
    }

  FUNC3 ();
  FUNC2 ("Program stopped at %s.\n",
		   FUNC1 ((unsigned long) stop_pc));
  if (stop_step)
    FUNC2 ("It stopped after being stepped.\n");
  else if (num != 0)
    {
      /* There may be several breakpoints in the same place, so this
         isn't as strange as it seems.  */
      while (num != 0)
	{
	  if (num < 0)
	    {
	      FUNC2 ("It stopped at a breakpoint that has ");
	      FUNC2 ("since been deleted.\n");
	    }
	  else
	    FUNC2 ("It stopped at breakpoint %d.\n", num);
	  num = FUNC0 (&bs);
	}
    }
  else if (stop_signal != TARGET_SIGNAL_0)
    {
      FUNC2 ("It stopped with signal %s, %s.\n",
		       FUNC4 (stop_signal),
		       FUNC5 (stop_signal));
    }

  if (!from_tty)
    {
      FUNC2 ("Type \"info stack\" or \"info registers\" ");
      FUNC2 ("for more information.\n");
    }
}