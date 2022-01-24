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
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

int
FUNC3 (int pid, int wait_status, int *exit_status)
{
  if (FUNC1 (wait_status))
    {
      *exit_status = FUNC0 (wait_status);
      return 1;
    }

  if (FUNC2 (wait_status))
    {
      *exit_status = 0;		/* ?? Don't know what else to say here. */
      return 1;
    }

  /* ?? Do we really need to consult the event state, too?  Assume the
     wait_state alone suffices.
   */
  return 0;
}