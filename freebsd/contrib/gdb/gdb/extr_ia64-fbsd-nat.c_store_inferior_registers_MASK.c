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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_GETFPREGS ; 
 int /*<<< orphan*/  PT_GETREGS ; 
 int /*<<< orphan*/  PT_SETFPREGS ; 
 int /*<<< orphan*/  PT_SETREGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7 (int regno)
{
  union {
    fpregset_t fpr;
    gregset_t r;
  } regs;

  if (regno == -1 || FUNC1(regno))
    {
      if (FUNC6 (PT_GETREGS, FUNC2(inferior_ptid),
		  (PTRACE_ARG3_TYPE)&regs.r, 0) == -1)
	FUNC5 ("Couldn't get registers");
      FUNC4 (&regs.r, regno);
      if (FUNC6 (PT_SETREGS, FUNC2(inferior_ptid),
		  (PTRACE_ARG3_TYPE)&regs.r, 0) == -1)
	FUNC5 ("Couldn't get registers");
      if (regno != -1)
	return;
    }

  if (regno == -1 || FUNC0(regno))
    {
      if (FUNC6 (PT_GETFPREGS, FUNC2(inferior_ptid),
		  (PTRACE_ARG3_TYPE)&regs.fpr, 0) == -1)
	FUNC5 ("Couldn't get FP registers");
      FUNC3 (&regs.fpr, regno);
      if (FUNC6 (PT_SETFPREGS, FUNC2(inferior_ptid),
		  (PTRACE_ARG3_TYPE)&regs.fpr, 0) == -1)
	FUNC5 ("Couldn't get FP registers");
      if (regno != -1)
	return;
    }
}