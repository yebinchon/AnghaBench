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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int NUM_FIXED_BLOCKS ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7 (rtx f)
{
  int count = NUM_FIXED_BLOCKS;
  bool saw_insn = false;
  rtx insn;

  for (insn = f; insn; insn = FUNC2 (insn))
    {
      /* Code labels and barriers causes current basic block to be
	 terminated at previous real insn.  */
      if ((FUNC1 (insn) || FUNC0 (insn))
	  && saw_insn)
	count++, saw_insn = false;

      /* Start basic block if needed.  */
      if (!saw_insn && FUNC6 (insn))
	saw_insn = true;

      /* Control flow insn causes current basic block to be terminated.  */
      if (saw_insn && FUNC3 (insn))
	count++, saw_insn = false;
    }

  if (saw_insn)
    count++;

  /* The rest of the compiler works a bit smoother when we don't have to
     check for the edge case of do-nothing functions with no basic blocks.  */
  if (count == NUM_FIXED_BLOCKS)
    {
      FUNC4 (FUNC5 (VOIDmode, const0_rtx));
      count = NUM_FIXED_BLOCKS + 1;
    }

  return count;
}