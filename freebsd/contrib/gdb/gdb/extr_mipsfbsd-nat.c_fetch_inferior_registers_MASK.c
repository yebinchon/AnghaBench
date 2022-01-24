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
struct reg {int dummy; } ;
struct fpreg {int dummy; } ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int FP0_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_GETFPREGS ; 
 int /*<<< orphan*/  PT_GETREGS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6 (int regno)
{
  if (regno == -1 || FUNC1 (regno))
    {
      struct reg regs;

      if (FUNC5 (PT_GETREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &regs, 0) == -1)
	FUNC4 ("Couldn't get registers");
      
      FUNC3 ((char *) &regs, regno);
      if (regno != -1)
	return;
    }

  if (regno == -1 || regno >= FP0_REGNUM)
    {
      struct fpreg fpregs;

      if (FUNC5 (PT_GETFPREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	FUNC4 ("Couldn't get floating point status");

      FUNC2 ((char *) &fpregs, regno);
    }
}