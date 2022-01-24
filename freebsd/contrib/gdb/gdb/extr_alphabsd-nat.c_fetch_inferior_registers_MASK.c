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
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6 (int regno)
{
  if (regno == -1 || FUNC3 (regno))
    {
      struct reg gregs;

      if (FUNC5 (PT_GETREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &gregs, 0) == -1)
	FUNC4 ("Couldn't get registers");

      FUNC2 ((char *) &gregs, regno);
      if (regno != -1)
	return;
    }

  if (regno == -1 || regno >= FP0_REGNUM)
    {
      struct fpreg fpregs;

      if (FUNC5 (PT_GETFPREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	FUNC4 ("Couldn't get floating point status");

      FUNC1 ((char *) &fpregs, regno);
    }
}