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
struct fpreg {int dummy; } ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_GETFPREGS ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fpreg*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  struct fpreg inferior_fp_registers;
  int ret;
  int regno;

  ret = FUNC1 (PT_GETFPREGS, FUNC0 (inferior_ptid),
		(PTRACE_ARG3_TYPE) &inferior_fp_registers, 0);

  if (ret < 0)
    {
      FUNC3 ("unable to fetch general registers");
      return;
    }

  FUNC2 (&inferior_fp_registers);
}