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
struct proc {int /*<<< orphan*/  port; struct proc* next; } ;
struct inf {scalar_t__ stopped; struct proc* threads; int /*<<< orphan*/  pid; } ;
typedef  int /*<<< orphan*/  process_t ;
typedef  scalar_t__ error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inf*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  proc_server ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6 (struct inf *inf)
{
  process_t proc;
  error_t err = FUNC2 (proc_server, inf->pid, &proc);

  if (!err)
    {
      FUNC0 (inf, "continuing process");

      err = FUNC1 (proc);
      if (!err)
	{
	  struct proc *thread;

	  for (thread = inf->threads; thread; thread = thread->next)
	    FUNC4 (thread->port);

	  inf->stopped = 0;
	}
    }

  if (err)
    FUNC5 ("Can't continue process: %s", FUNC3 (err));
}