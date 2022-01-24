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
 int /*<<< orphan*/  TT_NIL ; 
 int /*<<< orphan*/  TT_PROC_DETACH ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

int
FUNC2 (int pid, int signal)
{
  int tt_status;

  /* If signal is non-zero, we must pass the signal on to the active
     thread prior to detaching.  We do this by continuing the threads
     with the signal.
   */
  if (signal != 0)
    {
      errno = 0;
      FUNC1 (pid, signal);
    }

  errno = 0;
  tt_status = FUNC0 (TT_PROC_DETACH,
			   pid,
			   TT_NIL,
			   TT_NIL,
			   TT_NIL);

  errno = 0;			/* Ignore any errors. */

  /* process_state? */

  return pid;
}