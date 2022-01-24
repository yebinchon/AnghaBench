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
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {int death; } ;

/* Variables and functions */
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_INC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int,int) ; 
 TYPE_1__* qty ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t* reg_qty ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  this_insn ; 
 int this_insn_number ; 

__attribute__((used)) static void
FUNC14 (rtx reg, int output_p)
{
  int regno = FUNC3 (reg);

  /* If this insn has multiple results,
     and the dead reg is used in one of the results,
     extend its life to after this insn,
     so it won't get allocated together with any other result of this insn.

     It is unsafe to use !single_set here since it will ignore an unused
     output.  Just because an output is unused does not mean the compiler
     can assume the side effect will not occur.   Consider if REG appears
     in the address of an output and we reload the output.  If we allocate
     REG to the same hard register as an unused output we could set the hard
     register before the output reload insn.  */
  if (FUNC0 (FUNC2 (this_insn)) == PARALLEL
      && FUNC10 (this_insn))
    {
      int i;
      for (i = FUNC7 (FUNC2 (this_insn), 0) - 1; i >= 0; i--)
	{
	  rtx set = FUNC6 (FUNC2 (this_insn), 0, i);
	  if (FUNC0 (set) == SET
	      && !FUNC4 (FUNC5 (set))
	      && !FUNC13 (reg, FUNC5 (set))
	      && FUNC12 (reg, FUNC5 (set)))
	    output_p = 1;
	}
    }

  /* If this register is used in an auto-increment address, then extend its
     life to after this insn, so that it won't get allocated together with
     the result of this insn.  */
  if (! output_p && FUNC8 (this_insn, REG_INC, regno))
    output_p = 1;

  if (regno < FIRST_PSEUDO_REGISTER)
    {
      FUNC9 (regno, FUNC1 (reg), 0);

      /* If a hard register is dying as an output, mark it as in use at
	 the beginning of this insn (the above statement would cause this
	 not to happen).  */
      if (output_p)
	FUNC11 (regno, FUNC1 (reg), 1,
			2 * this_insn_number, 2 * this_insn_number + 1);
    }

  else if (reg_qty[regno] >= 0)
    qty[reg_qty[regno]].death = 2 * this_insn_number + output_p;
}