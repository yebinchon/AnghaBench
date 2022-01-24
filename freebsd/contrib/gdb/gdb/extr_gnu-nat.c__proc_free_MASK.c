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
struct proc {scalar_t__ port; scalar_t__ exc_port; scalar_t__ cur_sc; scalar_t__ sc; struct proc* next; struct inf* inf; } ;
struct TYPE_2__ {struct proc* thread; } ;
struct inf {struct proc* signal_thread; TYPE_1__ wait; struct proc* step_thread; } ;

/* Variables and functions */
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct inf*) ; 
 int /*<<< orphan*/  FUNC1 (struct inf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 

struct proc *
FUNC8 (struct proc *proc)
{
  struct inf *inf = proc->inf;
  struct proc *next = proc->next;

  FUNC4 (proc, "freeing...");

  if (proc == inf->step_thread)
    /* Turn off single stepping.  */
    FUNC1 (inf, 0);
  if (proc == inf->wait.thread)
    FUNC0 (inf);
  if (proc == inf->signal_thread)
    inf->signal_thread = 0;

  if (proc->port != MACH_PORT_NULL)
    {
      if (proc->exc_port != MACH_PORT_NULL)
	/* Restore the original exception port.  */
	FUNC5 (proc);
      if (proc->cur_sc != 0)
	/* Resume the thread/task.  */
	{
	  proc->sc = 0;
	  FUNC6 (proc);
	}
      FUNC2 (FUNC3 (), proc->port);
    }

  FUNC7 (proc);
  return next;
}