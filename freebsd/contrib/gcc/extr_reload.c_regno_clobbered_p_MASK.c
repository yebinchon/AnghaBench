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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CLOBBER ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 unsigned int** hard_regno_nregs ; 
 scalar_t__ FUNC8 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

int
FUNC9 (unsigned int regno, rtx insn, enum machine_mode mode,
		   int sets)
{
  unsigned int nregs, endregno;

  /* regno must be a hard register.  */
  FUNC7 (regno < FIRST_PSEUDO_REGISTER);

  nregs = hard_regno_nregs[regno][mode];
  endregno = regno + nregs;

  if ((FUNC0 (FUNC1 (insn)) == CLOBBER
       || (sets == 1 && FUNC0 (FUNC1 (insn)) == SET))
      && FUNC3 (FUNC4 (FUNC1 (insn), 0)))
    {
      unsigned int test = FUNC2 (FUNC4 (FUNC1 (insn), 0));

      return test >= regno && test < endregno;
    }

  if (sets == 2 && FUNC8 (regno, endregno, insn))
    return 1; 
  
  if (FUNC0 (FUNC1 (insn)) == PARALLEL)
    {
      int i = FUNC6 (FUNC1 (insn), 0) - 1;

      for (; i >= 0; i--)
	{
	  rtx elt = FUNC5 (FUNC1 (insn), 0, i);
	  if ((FUNC0 (elt) == CLOBBER
	       || (sets == 1 && FUNC0 (FUNC1 (insn)) == SET))
	      && FUNC3 (FUNC4 (elt, 0)))
	    {
	      unsigned int test = FUNC2 (FUNC4 (elt, 0));

	      if (test >= regno && test < endregno)
		return 1;
	    }
	  if (sets == 2
	      && FUNC8 (regno, endregno, elt))
	    return 1; 
	}
    }

  return 0;
}