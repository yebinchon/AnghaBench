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
struct inf {scalar_t__ signal_thread; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct inf* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (struct inf*,int) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (char *args, int from_tty)
{
  struct inf *inf = FUNC2 ();

  if (!args || (!FUNC5 (*args) && FUNC6 (args, "none") != 0))
    FUNC3 ("Illegal argument to \"set signal-thread\" command.\n"
	   "Should be an integer thread ID, or `none'.");

  if (FUNC6 (args, "none") == 0)
    inf->signal_thread = 0;
  else
    {
      int tid = FUNC0 (FUNC7 (FUNC1 (args)));
      if (tid < 0)
	FUNC3 ("Thread ID %s not known.  Use the \"info threads\" command to\n"
	       "see the IDs of currently known threads.", args);
      inf->signal_thread = FUNC4 (inf, tid);
    }
}