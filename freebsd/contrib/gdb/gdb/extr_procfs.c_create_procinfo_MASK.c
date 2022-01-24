#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int pid; int tid; struct TYPE_9__* thread_list; struct TYPE_9__* next; int /*<<< orphan*/  pathname; void* saved_exitset; void* saved_entryset; } ;
typedef  TYPE_1__ procinfo ;

/* Variables and functions */
 char* MAIN_PROC_NAME_FMT ; 
 TYPE_1__* FUNC0 (int,int) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* procinfo_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 void* FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static procinfo *
FUNC7 (int pid, int tid)
{
  procinfo *pi, *parent;

  if ((pi = FUNC0 (pid, tid)))
    return pi;			/* Already exists, nothing to do. */

  /* find parent before doing malloc, to save having to cleanup */
  if (tid != 0)
    parent = FUNC1 (pid, 0);	/* FIXME: should I
						   create it if it
						   doesn't exist yet? */

  pi = (procinfo *) FUNC6 (sizeof (procinfo));
  FUNC3 (pi, 0, sizeof (procinfo));
  pi->pid = pid;
  pi->tid = tid;

#ifdef DYNAMIC_SYSCALLS
  load_syscalls (pi);
#endif

  pi->saved_entryset = FUNC5 (pi);
  pi->saved_exitset = FUNC5 (pi);

  /* Chain into list.  */
  if (tid == 0)
    {
      FUNC4 (pi->pathname, MAIN_PROC_NAME_FMT, pid);
      pi->next = procinfo_list;
      procinfo_list = pi;
    }
  else
    {
#ifdef NEW_PROC_API
      sprintf (pi->pathname, "/proc/%05d/lwp/%d", pid, tid);
#else
      FUNC4 (pi->pathname, MAIN_PROC_NAME_FMT, pid);
#endif
      pi->next = parent->thread_list;
      parent->thread_list = pi;
    }
  return pi;
}