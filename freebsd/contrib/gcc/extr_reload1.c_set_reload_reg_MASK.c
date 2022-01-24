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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ mode; scalar_t__ in; scalar_t__ out; scalar_t__ reg_rtx; int /*<<< orphan*/  when_needed; int /*<<< orphan*/  opnum; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int VOIDmode ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int last_spill_reg ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * reload_spill_index ; 
 TYPE_1__* rld ; 
 scalar_t__* spill_reg_rtx ; 
 int /*<<< orphan*/ * spill_regs ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int
FUNC5 (int i, int r)
{
  int regno;
  rtx reg = spill_reg_rtx[i];

  if (reg == 0 || FUNC0 (reg) != rld[r].mode)
    spill_reg_rtx[i] = reg
      = FUNC2 (rld[r].mode, spill_regs[i]);

  regno = FUNC4 (reg);

  /* Detect when the reload reg can't hold the reload mode.
     This used to be one `if', but Sequent compiler can't handle that.  */
  if (FUNC1 (regno, rld[r].mode))
    {
      enum machine_mode test_mode = VOIDmode;
      if (rld[r].in)
	test_mode = FUNC0 (rld[r].in);
      /* If rld[r].in has VOIDmode, it means we will load it
	 in whatever mode the reload reg has: to wit, rld[r].mode.
	 We have already tested that for validity.  */
      /* Aside from that, we need to test that the expressions
	 to reload from or into have modes which are valid for this
	 reload register.  Otherwise the reload insns would be invalid.  */
      if (! (rld[r].in != 0 && test_mode != VOIDmode
	     && ! FUNC1 (regno, test_mode)))
	if (! (rld[r].out != 0
	       && ! FUNC1 (regno, FUNC0 (rld[r].out))))
	  {
	    /* The reg is OK.  */
	    last_spill_reg = i;

	    /* Mark as in use for this insn the reload regs we use
	       for this.  */
	    FUNC3 (spill_regs[i], rld[r].opnum,
				    rld[r].when_needed, rld[r].mode);

	    rld[r].reg_rtx = reg;
	    reload_spill_index[r] = spill_regs[i];
	    return 1;
	  }
    }
  return 0;
}