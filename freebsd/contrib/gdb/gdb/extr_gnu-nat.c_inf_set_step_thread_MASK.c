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
struct proc {scalar_t__ port; int /*<<< orphan*/  tid; } ;
struct inf {struct proc* step_thread; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inf*,char*,...) ; 
 scalar_t__ FUNC2 (struct proc*) ; 
 scalar_t__ FUNC3 (struct proc*,int) ; 

void
FUNC4 (struct inf *inf, struct proc *thread)
{
  FUNC0 (!thread || FUNC2 (thread));

  if (thread)
    FUNC1 (inf, "setting step thread: %d/%d", inf->pid, thread->tid);
  else
    FUNC1 (inf, "clearing step thread");

  if (inf->step_thread != thread)
    {
      if (inf->step_thread && inf->step_thread->port != MACH_PORT_NULL)
	if (!FUNC3 (inf->step_thread, 0))
	  return;
      if (thread && FUNC3 (thread, 1))
	inf->step_thread = thread;
      else
	inf->step_thread = 0;
    }
}