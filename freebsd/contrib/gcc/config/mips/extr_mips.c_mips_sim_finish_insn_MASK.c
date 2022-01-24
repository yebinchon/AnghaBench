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
struct mips_sim {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
#define  CALL_INSN 130 
#define  CODE_LABEL 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  JUMP_INSN 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mips_sim*) ; 
 int /*<<< orphan*/  FUNC5 (struct mips_sim*) ; 

__attribute__((used)) static void
FUNC6 (struct mips_sim *state, rtx insn)
{
  /* If INSN is a jump with an implicit delay slot, simulate a nop.  */
  if (FUNC2 (insn))
    FUNC4 (state);

  switch (FUNC0 (FUNC3 (insn)))
    {
    case CODE_LABEL:
    case CALL_INSN:
      /* We can't predict the processor state after a call or label.  */
      FUNC5 (state);
      break;

    case JUMP_INSN:
      /* The delay slots of branch likely instructions are only executed
	 when the branch is taken.  Therefore, if the caller has simulated
	 the delay slot instruction, STATE does not really reflect the state
	 of the pipeline for the instruction after the delay slot.  Also,
	 branch likely instructions tend to incur a penalty when not taken,
	 so there will probably be an extra delay between the branch and
	 the instruction after the delay slot.  */
      if (FUNC1 (FUNC3 (insn)))
	FUNC5 (state);
      break;

    default:
      break;
    }
}