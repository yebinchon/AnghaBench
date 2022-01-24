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
struct proc {scalar_t__ port; scalar_t__ dead; } ;
struct TYPE_2__ {int suppress; } ;
struct inf {scalar_t__ pid; scalar_t__ threads_up_to_date; TYPE_1__ wait; struct proc* task; } ;
typedef  scalar_t__ mach_port_t ;
typedef  int /*<<< orphan*/  error_t ;

/* Variables and functions */
 void* MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct inf*,char*,scalar_t__) ; 
 struct proc* FUNC1 (struct inf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,char*) ; 
 scalar_t__ proc_wait_pid ; 
 struct inf* waiting_inf ; 

error_t
FUNC6 (mach_port_t notify, mach_port_t dead_port)
{
  struct inf *inf = waiting_inf;

  FUNC0 (waiting_inf, "port = %d", dead_port);

  if (inf->task && inf->task->port == dead_port)
    {
      FUNC5 (inf->task, "is dead");
      inf->task->port = MACH_PORT_NULL;
      if (proc_wait_pid == inf->pid)
	/* We have a wait outstanding on the process, which will return more
	   detailed information, so delay until we get that.  */
	inf->wait.suppress = 1;
      else
	/* We never waited for the process (maybe it wasn't a child), so just
	   pretend it got a SIGKILL.  */
	FUNC2 (inf);
    }
  else
    {
      struct proc *thread = FUNC1 (inf, dead_port);
      if (thread)
	{
	  FUNC5 (thread, "is dead");
	  thread->port = MACH_PORT_NULL;
	}

      if (inf->task->dead)
	/* Since the task is dead, its threads are dying with it.  */
	inf->wait.suppress = 1;
    }

  FUNC3 (FUNC4 (), dead_port);
  inf->threads_up_to_date = 0;	/* Just in case */

  return 0;
}