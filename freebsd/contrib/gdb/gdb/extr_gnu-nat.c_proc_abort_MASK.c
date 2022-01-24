#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct proc {int aborted; scalar_t__ cur_sc; int sc; int /*<<< orphan*/  port; struct inf* inf; } ;
struct TYPE_5__ {scalar_t__ reply; } ;
struct TYPE_6__ {TYPE_2__ exc; struct proc* thread; } ;
struct inf {TYPE_3__ wait; TYPE_1__* task; } ;
struct TYPE_4__ {scalar_t__ cur_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inf*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

void
FUNC7 (struct proc *proc, int force)
{
  FUNC0 (FUNC3 (proc));

  if (!proc->aborted)
    {
      struct inf *inf = proc->inf;
      int running = (proc->cur_sc == 0 && inf->task->cur_sc == 0);

      if (running && force)
	{
	  proc->sc = 1;
	  FUNC1 (proc->inf);
	  running = 0;
	  FUNC6 ("Stopped %s.", FUNC4 (proc));
	}
      else if (proc == inf->wait.thread && inf->wait.exc.reply && !force)
	/* An exception is pending on PROC, which don't mess with.  */
	running = 1;

      if (!running)
	/* We only abort the thread if it's not actually running.  */
	{
	  FUNC5 (proc->port);
	  FUNC2 (proc, "aborted");
	  proc->aborted = 1;
	}
      else
	FUNC2 (proc, "not aborting");
    }
}