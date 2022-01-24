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
typedef  int /*<<< orphan*/  gregset_t ;
typedef  int /*<<< orphan*/  fpregset_t ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int FP0_REGNUM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_GETFPREGS ; 
 int /*<<< orphan*/  PT_GETREGS ; 
 int /*<<< orphan*/  PT_GETXMMREGS ; 
 int /*<<< orphan*/  current_regcache ; 
 int have_ptrace_xmmregs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7 (int regno)
{
  if (regno == -1 || FUNC0 (regno))
    {
      gregset_t gregs;

      if (FUNC5 (PT_GETREGS, FUNC1 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &gregs, 0) == -1)
	FUNC4 ("Couldn't get registers");

      FUNC6 (&gregs);
      if (regno != -1)
	return;
    }

  if (regno == -1 || regno >= FP0_REGNUM)
    {
      fpregset_t fpregs;
#ifdef HAVE_PT_GETXMMREGS
      char xmmregs[512];

      if (have_ptrace_xmmregs != 0
	  && ptrace(PT_GETXMMREGS, PIDGET (inferior_ptid),
		    (PTRACE_ARG3_TYPE) xmmregs, 0) == 0)
	{
	  have_ptrace_xmmregs = 1;
	  i387_supply_fxsave (current_regcache, -1, xmmregs);
	}
      else
	{
          if (ptrace (PT_GETFPREGS, PIDGET (inferior_ptid),
		      (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	    perror_with_name ("Couldn't get floating point status");

	  i387_supply_fsave (current_regcache, -1, &fpregs);
	}
#else
      if (FUNC5 (PT_GETFPREGS, FUNC1 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	FUNC4 ("Couldn't get floating point status");

      FUNC2 (current_regcache, -1, &fpregs);
#endif
    }
}