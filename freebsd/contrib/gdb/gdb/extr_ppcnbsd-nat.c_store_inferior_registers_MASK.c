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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_GETFPREGS ; 
 int /*<<< orphan*/  PT_GETREGS ; 
 int /*<<< orphan*/  PT_SETFPREGS ; 
 int /*<<< orphan*/  PT_SETREGS ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7 (int regno)
{
  if (regno == -1 || FUNC2 (regno))
    {
      struct reg regs;

      if (FUNC6 (PT_GETREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &regs, 0) == -1)
	FUNC3 ("Couldn't get registers");

      FUNC5 ((char *) &regs, regno);

      if (FUNC6 (PT_SETREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &regs, 0) == -1)
	FUNC3 ("Couldn't write registers");

      if (regno != -1)
	return;
    }

  if (regno == -1 || FUNC1 (regno))
    {
      struct fpreg fpregs;

      if (FUNC6 (PT_GETFPREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	FUNC3 ("Couldn't get FP registers");

      FUNC4 ((char *) &fpregs, regno);
      
      if (FUNC6 (PT_SETFPREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	FUNC3 ("Couldn't set FP registers");
    }
}