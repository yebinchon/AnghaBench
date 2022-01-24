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
struct proc {int /*<<< orphan*/  detach_sc; int /*<<< orphan*/  sc; struct proc* next; } ;
struct inf {struct proc* threads; int /*<<< orphan*/  detach_sc; scalar_t__ nomsg; scalar_t__ stopped; struct proc* task; } ;

/* Variables and functions */
 int /*<<< orphan*/  TARGET_SIGNAL_0 ; 
 int /*<<< orphan*/  FUNC0 (struct inf*) ; 
 int /*<<< orphan*/  FUNC1 (struct inf*) ; 
 int /*<<< orphan*/  FUNC2 (struct inf*) ; 
 int /*<<< orphan*/  FUNC3 (struct inf*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct inf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inf*) ; 
 int /*<<< orphan*/  FUNC8 (struct inf*) ; 
 int /*<<< orphan*/  FUNC9 (struct proc*) ; 

void
FUNC10 (struct inf *inf)
{
  struct proc *task = inf->task;

  FUNC3 (inf, "detaching...");

  FUNC1 (inf);
  FUNC4 (inf, 0);

  if (task)
    {
      struct proc *thread;

      FUNC8 (inf);

      FUNC5 (inf, 0);
      if (inf->stopped)
	{
	  if (inf->nomsg)
	    FUNC2 (inf);
	  else
	    FUNC6 (inf, TARGET_SIGNAL_0);
	}

      FUNC9 (task);
      task->sc = inf->detach_sc;

      for (thread = inf->threads; thread; thread = thread->next)
	{
	  FUNC9 (thread);
	  thread->sc = thread->detach_sc;
	}

      FUNC7 (inf);
    }

  FUNC0 (inf);
}