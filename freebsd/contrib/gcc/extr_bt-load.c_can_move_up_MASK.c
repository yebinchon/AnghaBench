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
typedef  scalar_t__ rtx ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static int
FUNC3 (basic_block bb, rtx insn, int n_insns)
{
  while (insn != FUNC0 (bb) && n_insns > 0)
    {
      insn = FUNC2 (insn);
      /* ??? What if we have an anti-dependency that actually prevents the
	 scheduler from doing the move?  We'd like to re-allocate the register,
	 but not necessarily put the load into another basic block.  */
      if (FUNC1 (insn))
	n_insns--;
    }
  return n_insns <= 0;
}