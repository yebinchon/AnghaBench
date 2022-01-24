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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ event_loop_p ; 
 int FUNC3 (char**) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  target_has_execution ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static void
FUNC6 (char *arg, int from_tty)
{
  int async_exec = 0;

  if (!target_has_execution)
    FUNC1 ("The program is not running.");

  if (arg == NULL)
    FUNC2 ("a location");

  /* Find out whether we must run in the background.  */
  if (arg != NULL)
    async_exec = FUNC3 (&arg);

  /* If we must run in the background, but the target can't do it,
     error out.  */
  if (event_loop_p && async_exec && !FUNC4 ())
    FUNC1 ("Asynchronous execution not supported on this target.");

  /* If we are not asked to run in the bg, then prepare to run in the
     foreground, synchronously.  */
  if (event_loop_p && !async_exec && FUNC4 ())
    {
      /* Simulate synchronous execution.  */
      FUNC0 ();
    }

  FUNC5 (arg, from_tty, 1);
}