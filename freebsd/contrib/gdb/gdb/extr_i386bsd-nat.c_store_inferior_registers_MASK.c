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
 int /*<<< orphan*/  PT_SETFPREGS ; 
 int /*<<< orphan*/  PT_SETREGS ; 
 int /*<<< orphan*/  PT_SETXMMREGS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int have_ptrace_xmmregs ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7 (int regno)
{
  if (regno == -1 || FUNC0 (regno))
    {
      gregset_t gregs;

      if (FUNC6 (PT_GETREGS, FUNC1 (inferior_ptid),
                  (PTRACE_ARG3_TYPE) &gregs, 0) == -1)
        FUNC5 ("Couldn't get registers");

      FUNC2 (&gregs, regno);

      if (FUNC6 (PT_SETREGS, FUNC1 (inferior_ptid),
	          (PTRACE_ARG3_TYPE) &gregs, 0) == -1)
        FUNC5 ("Couldn't write registers");

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

	  i387_fill_fxsave (xmmregs, regno);

	  if (ptrace (PT_SETXMMREGS, PIDGET (inferior_ptid),
		      (PTRACE_ARG3_TYPE) xmmregs, 0) == -1)
            perror_with_name ("Couldn't write XMM registers");
	}
      else
	{
	  have_ptrace_xmmregs = 0;
#endif
          if (FUNC6 (PT_GETFPREGS, FUNC1 (inferior_ptid),
		      (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	    FUNC5 ("Couldn't get floating point status");

          FUNC3 ((char *) &fpregs, regno);
  
          if (FUNC6 (PT_SETFPREGS, FUNC1 (inferior_ptid),
		      (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	    FUNC5 ("Couldn't write floating point status");
#ifdef HAVE_PT_GETXMMREGS
        }
#endif
    }
}