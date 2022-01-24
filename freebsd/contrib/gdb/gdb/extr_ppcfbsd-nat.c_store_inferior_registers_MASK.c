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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8 (int regno)
{
  if (regno == -1 || FUNC3 (regno))
    {
      struct reg regs;

      if (FUNC7 (PT_GETREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &regs, 0) == -1)
	FUNC4 (FUNC1("Couldn't get registers"));

      FUNC6 ((char *) &regs, regno);

      if (FUNC7 (PT_SETREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &regs, 0) == -1)
	FUNC4 (FUNC1("Couldn't write registers"));

      if (regno != -1)
	return;
    }

  if (regno == -1 || FUNC2 (regno))
    {
      struct fpreg fpregs;

      if (FUNC7 (PT_GETFPREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	FUNC4 (FUNC1("Couldn't get FP registers"));

      FUNC5 ((char *) &fpregs, regno);
      
      if (FUNC7 (PT_SETFPREGS, FUNC0 (inferior_ptid),
		  (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	FUNC4 (FUNC1("Couldn't set FP registers"));
    }
}