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
typedef  enum reg_note { ____Placeholder_reg_note } reg_note ;

/* Variables and functions */
 size_t FIRST_PSEUDO_REGISTER ; 
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 size_t FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int** hard_regno_nregs ; 

rtx
FUNC7 (rtx insn, enum reg_note kind, unsigned int regno)
{
  rtx link;

  /* Ignore anything that is not an INSN, JUMP_INSN or CALL_INSN.  */
  if (! FUNC1 (insn))
    return 0;

  for (link = FUNC3 (insn); link; link = FUNC6 (link, 1))
    if (FUNC4 (link) == kind
	/* Verify that it is a register, so that scratch and MEM won't cause a
	   problem here.  */
	&& FUNC5 (FUNC6 (link, 0))
	&& FUNC2 (FUNC6 (link, 0)) <= regno
	&& ((FUNC2 (FUNC6 (link, 0))
	     + (FUNC2 (FUNC6 (link, 0)) >= FIRST_PSEUDO_REGISTER ? 1
		: hard_regno_nregs[FUNC2 (FUNC6 (link, 0))]
				  [FUNC0 (FUNC6 (link, 0))]))
	    > regno))
      return link;
  return 0;
}