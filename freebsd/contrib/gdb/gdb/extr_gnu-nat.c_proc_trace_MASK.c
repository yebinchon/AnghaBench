#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_state_t ;
struct proc {scalar_t__ exc_port; TYPE_1__* inf; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_port; } ;

/* Variables and functions */
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int /*<<< orphan*/ ) ; 

int
FUNC5 (struct proc *proc, int set)
{
  thread_state_t state = FUNC3 (proc, 1);

  if (!state)
    return 0;			/* the thread must be dead.  */

  FUNC2 (proc, "tracing %s", set ? "on" : "off");

  if (set)
    {
      /* XXX We don't get the exception unless the thread has its own
         exception port???? */
      if (proc->exc_port == MACH_PORT_NULL)
	FUNC4 (proc, proc->inf->event_port);
      FUNC1 (state);
    }
  else
    FUNC0 (state);

  return 1;
}