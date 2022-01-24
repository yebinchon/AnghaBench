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
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 unsigned int FIRST_PSEUDO_REGISTER ; 
 int FUNC2 (scalar_t__) ; 
 size_t FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 unsigned int** hard_regno_nregs ; 

int
FUNC7 (rtx insn, enum rtx_code code, unsigned int regno)
{
  rtx link;

  /* CALL_INSN_FUNCTION_USAGE information cannot contain references
     to pseudo registers, so don't bother checking.  */

  if (regno >= FIRST_PSEUDO_REGISTER
      || !FUNC1 (insn) )
    return 0;

  for (link = FUNC0 (insn); link; link = FUNC6 (link, 1))
    {
      unsigned int regnote;
      rtx op, reg;

      if (FUNC2 (op = FUNC6 (link, 0)) == code
	  && FUNC5 (reg = FUNC6 (op, 0))
	  && (regnote = FUNC4 (reg)) <= regno
	  && regnote + hard_regno_nregs[regnote][FUNC3 (reg)] > regno)
	return 1;
    }

  return 0;
}