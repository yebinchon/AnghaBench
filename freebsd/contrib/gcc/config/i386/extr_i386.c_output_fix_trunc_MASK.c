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

/* Variables and functions */
 scalar_t__ DImode ; 
 int /*<<< orphan*/  FIRST_STACK_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int I387_CW_ANY ; 
 scalar_t__ MEM ; 
 int /*<<< orphan*/  REG_DEAD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

const char *
FUNC7 (rtx insn, rtx *operands, int fisttp)
{
  int stack_top_dies = FUNC3 (insn, REG_DEAD, FIRST_STACK_REG) != 0;
  int dimode_p = FUNC1 (operands[0]) == DImode;
  int round_mode = FUNC5 (insn);

  /* Jump through a hoop or two for DImode, since the hardware has no
     non-popping instruction.  We used to do this a different way, but
     that was somewhat fragile and broke with post-reload splitters.  */
  if ((dimode_p || fisttp) && !stack_top_dies)
    FUNC6 ("fld\t%y1", operands);

  FUNC4 (FUNC2 (operands[1]));
  FUNC4 (FUNC0 (operands[0]) == MEM);

  if (fisttp)
      FUNC6 ("fisttp%z0\t%0", operands);
  else
    {
      if (round_mode != I387_CW_ANY)
	FUNC6 ("fldcw\t%3", operands);
      if (stack_top_dies || dimode_p)
	FUNC6 ("fistp%z0\t%0", operands);
      else
	FUNC6 ("fist%z0\t%0", operands);
      if (round_mode != I387_CW_ANY)
	FUNC6 ("fldcw\t%2", operands);
    }

  return "";
}