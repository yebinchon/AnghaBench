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
typedef  int /*<<< orphan*/  ptid_t ;
typedef  int /*<<< orphan*/  procinfo ;

/* Variables and functions */
 scalar_t__ FLTKWATCH ; 
 scalar_t__ FLTWATCH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PR_FAULTED ; 
 int PR_ISTOP ; 
 int PR_STOPPED ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5 (ptid_t ptid)
{
  procinfo *pi;

  pi = FUNC1 (FUNC0 (ptid) == -1 ?
			     FUNC0 (inferior_ptid) : FUNC0 (ptid), 0);

  if (!pi)	/* If no process, then not stopped by watchpoint!  */
    return 0;

  if (FUNC2 (pi) & (PR_STOPPED | PR_ISTOP))
    {
      if (FUNC4 (pi) == PR_FAULTED)
	{
#ifdef FLTWATCH
	  if (proc_what (pi) == FLTWATCH)
	    return 1;
#endif
#ifdef FLTKWATCH
	  if (proc_what (pi) == FLTKWATCH)
	    return 1;
#endif
	}
    }
  return 0;
}