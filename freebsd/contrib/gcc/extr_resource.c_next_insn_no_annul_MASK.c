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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int CALL_INSN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int INSN ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int JUMP_INSN ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ SEQUENCE ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC9 (rtx insn)
{
  if (insn)
    {
      /* If INSN is an annulled branch, skip any insns from the target
	 of the branch.  */
      if (FUNC3 (insn)
	  && FUNC1 (insn)
	  && FUNC4 (FUNC7 (insn)) != insn)
	{
	  rtx next = FUNC4 (insn);
	  enum rtx_code code = FUNC0 (next);

	  while ((code == INSN || code == JUMP_INSN || code == CALL_INSN)
		 && FUNC2 (next))
	    {
	      insn = next;
	      next = FUNC4 (insn);
	      code = FUNC0 (next);
	    }
	}

      insn = FUNC4 (insn);
      if (insn && FUNC5 (insn)
	  && FUNC0 (FUNC6 (insn)) == SEQUENCE)
	insn = FUNC8 (FUNC6 (insn), 0, 0);
    }

  return insn;
}