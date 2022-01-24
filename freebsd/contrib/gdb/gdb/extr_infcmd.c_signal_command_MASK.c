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
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_NO_INFERIOR ; 
 int TARGET_SIGNAL_0 ; 
 int TARGET_SIGNAL_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_pc ; 
 int FUNC6 (int) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9 (char *signum_exp, int from_tty)
{
  enum target_signal oursig;

  FUNC1 ();		/* Too dangerous.  */
  ERROR_NO_INFERIOR;

  if (!signum_exp)
    FUNC2 ("signal number");

  /* It would be even slicker to make signal names be valid expressions,
     (the type could be "enum $signal" or some such), then the user could
     assign them to convenience variables.  */
  oursig = FUNC7 (signum_exp);

  if (oursig == TARGET_SIGNAL_UNKNOWN)
    {
      /* No, try numeric.  */
      int num = FUNC3 (signum_exp);

      if (num == 0)
	oursig = TARGET_SIGNAL_0;
      else
	oursig = FUNC6 (num);
    }

  if (from_tty)
    {
      if (oursig == TARGET_SIGNAL_0)
	FUNC4 ("Continuing with no signal.\n");
      else
	FUNC4 ("Continuing with signal %s.\n",
			 FUNC8 (oursig));
    }

  FUNC0 ();
  /* "signal 0" should not get stuck if we are stopped at a breakpoint.
     FIXME: Neither should "signal foo" but when I tried passing
     (CORE_ADDR)-1 unconditionally I got a testsuite failure which I haven't
     tried to track down yet.  */
  FUNC5 (oursig == TARGET_SIGNAL_0 ? (CORE_ADDR) -1 : stop_pc, oursig, 0);
}