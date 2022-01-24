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
struct proc {struct proc* next; } ;
struct inf {struct proc* threads; int /*<<< orphan*/  event_port; struct proc* task; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct inf*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct inf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 

void
FUNC3 (struct inf *inf)
{
  struct proc *thread;

  FUNC0 (inf, "stealing exception ports");

  FUNC1 (inf, 0);	/* The step thread is special. */

  FUNC2 (inf->task, inf->event_port);
  for (thread = inf->threads; thread; thread = thread->next)
    FUNC2 (thread, MACH_PORT_NULL);
}