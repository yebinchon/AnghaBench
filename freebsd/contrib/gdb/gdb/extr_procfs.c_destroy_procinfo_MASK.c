#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ tid; struct TYPE_7__* thread_list; int /*<<< orphan*/  pid; } ;
typedef  TYPE_1__ procinfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* procinfo_list ; 

__attribute__((used)) static void
FUNC2 (procinfo *pi)
{
  procinfo *tmp;

  if (pi->tid != 0)	/* destroy a thread procinfo */
    {
      tmp = FUNC1 (pi->pid, 0);	/* find the parent process */
      FUNC0 (&tmp->thread_list, pi);
    }
  else			/* destroy a process procinfo and all its threads */
    {
      /* First destroy the children, if any; */
      while (pi->thread_list != NULL)
	FUNC0 (&pi->thread_list, pi->thread_list);
      /* Then destroy the parent.  Genocide!!!  */
      FUNC0 (&procinfo_list, pi);
    }
}