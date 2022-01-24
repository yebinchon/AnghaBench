#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
struct TYPE_2__ {scalar_t__ truncated_to_mode; scalar_t__ last_death; scalar_t__ last_set_sign_bit_copies; scalar_t__ last_set_nonzero_bits; scalar_t__ last_set_mode; scalar_t__ last_set_value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 size_t FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ REG_DEAD ; 
 scalar_t__ REG_INC ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  last_call_cuid ; 
 int /*<<< orphan*/  mem_last_set ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  record_dead_and_set_regs_1 ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_1__* reg_stat ; 
 int /*<<< orphan*/  regs_invalidated_by_call ; 

__attribute__((used)) static void
FUNC12 (rtx insn)
{
  rtx link;
  unsigned int i;

  for (link = FUNC5 (insn); link; link = FUNC9 (link, 1))
    {
      if (FUNC6 (link) == REG_DEAD
	  && FUNC7 (FUNC9 (link, 0)))
	{
	  unsigned int regno = FUNC4 (FUNC9 (link, 0));
	  unsigned int endregno
	    = regno + (regno < FIRST_PSEUDO_REGISTER
		       ? hard_regno_nregs[regno][FUNC1 (FUNC9 (link, 0))]
		       : 1);

	  for (i = regno; i < endregno; i++)
	    reg_stat[i].last_death = insn;
	}
      else if (FUNC6 (link) == REG_INC)
	FUNC11 (FUNC9 (link, 0), insn, NULL_RTX);
    }

  if (FUNC0 (insn))
    {
      for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
	if (FUNC8 (regs_invalidated_by_call, i))
	  {
	    reg_stat[i].last_set_value = 0;
	    reg_stat[i].last_set_mode = 0;
	    reg_stat[i].last_set_nonzero_bits = 0;
	    reg_stat[i].last_set_sign_bit_copies = 0;
	    reg_stat[i].last_death = 0;
	    reg_stat[i].truncated_to_mode = 0;
	  }

      last_call_cuid = mem_last_set = FUNC2 (insn);

      /* We can't combine into a call pattern.  Remember, though, that
	 the return value register is set at this CUID.  We could
	 still replace a register with the return value from the
	 wrong subroutine call!  */
      FUNC10 (FUNC3 (insn), record_dead_and_set_regs_1, NULL_RTX);
    }
  else
    FUNC10 (FUNC3 (insn), record_dead_and_set_regs_1, insn);
}