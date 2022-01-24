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

/* Variables and functions */
 int /*<<< orphan*/  QUIT ; 
 int TARGET_SIGNAL_0 ; 
 int TARGET_SIGNAL_DEFAULT ; 
 int TARGET_SIGNAL_FIRST ; 
 scalar_t__ TARGET_SIGNAL_LAST ; 
 int TARGET_SIGNAL_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (char *signum_exp, int from_tty)
{
  enum target_signal oursig;
  FUNC2 ();

  if (signum_exp)
    {
      /* First see if this is a symbol name.  */
      oursig = FUNC5 (signum_exp);
      if (oursig == TARGET_SIGNAL_UNKNOWN)
	{
	  /* No, try numeric.  */
	  oursig =
	    FUNC4 (FUNC0 (signum_exp));
	}
      FUNC3 (oursig);
      return;
    }

  FUNC1 ("\n");
  /* These ugly casts brought to you by the native VAX compiler.  */
  for (oursig = TARGET_SIGNAL_FIRST;
       (int) oursig < (int) TARGET_SIGNAL_LAST;
       oursig = (enum target_signal) ((int) oursig + 1))
    {
      QUIT;

      if (oursig != TARGET_SIGNAL_UNKNOWN
	  && oursig != TARGET_SIGNAL_DEFAULT && oursig != TARGET_SIGNAL_0)
	FUNC3 (oursig);
    }

  FUNC1 ("\nUse the \"handle\" command to change these tables.\n");
}