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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

int
FUNC3 (void *data)
{
  /* Any events already waiting in the queue? */
  if (FUNC2 ())
    {
      return 1;
    }

  /* Are any timers that are ready? If so, put an event on the queue. */
  FUNC1 ();

  /* Wait for a new event.  If gdb_wait_for_event returns -1,
     we should get out because this means that there are no
     event sources left. This will make the event loop stop,
     and the application exit. */

  if (FUNC0 () < 0)
    {
      return -1;
    }

  /* Handle any new events occurred while waiting. */
  if (FUNC2 ())
    {
      return 1;
    }

  /* If gdb_wait_for_event has returned 1, it means that one
     event has been handled. We break out of the loop. */
  return 1;
}