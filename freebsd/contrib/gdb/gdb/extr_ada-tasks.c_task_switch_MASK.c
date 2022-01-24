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

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ current_task ; 
 scalar_t__ current_task_id ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  fpregset_saved ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  gregset_saved ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_pc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ thread_support ; 

__attribute__((used)) static int
FUNC7 (void *tid, void *lwpid)
{
  int res = 0, pid;

  if (thread_support)
    {
      FUNC1 ();

      if (current_task != current_task_id)
	{
	  res = FUNC0 ();
	}
      else
	{
#if (defined(__alpha__) && defined(__osf__) && !defined(VXWORKS_TARGET))
	  supply_gregset (&gregset_saved);
	  supply_fpregset (&fpregset_saved);
#endif
	}

      if (res == 0)
	stop_pc = FUNC3 ();
      FUNC4 (FUNC2 ());
      return res;
    }

  return -1;
}