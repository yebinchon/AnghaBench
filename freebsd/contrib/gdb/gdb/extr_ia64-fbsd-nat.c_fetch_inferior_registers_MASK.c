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
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7 (int regno)
{
  union {
    fpregset_t fpr;
    gregset_t r;
  } regs;

  if (regno == -1 || FUNC1(regno))
    {
      if (FUNC4 (PT_GETREGS, FUNC2(inferior_ptid),
		  (PTRACE_ARG3_TYPE)&regs.r, 0) == -1)
	FUNC3 ("Couldn't get registers");
      FUNC6 (&regs.r);
    }

  if (regno == -1 || FUNC0(regno))
    {
      if (FUNC4 (PT_GETFPREGS, FUNC2(inferior_ptid),
		  (PTRACE_ARG3_TYPE)&regs.fpr, 0) == -1)
	FUNC3 ("Couldn't get FP registers");
      FUNC5 (&regs.fpr);
    }
}