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
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int which_alternative ; 

const char *
FUNC7 (rtx *operands, rtx insn, const char *opcode)
{
  static char asm_code[60];

  /* The scratch register is only required when the destination
     register is not a 64-bit global or out register.  */
  if (which_alternative != 2)
    operands[3] = operands[0];

  /* We can only shift by constants <= 63. */
  if (FUNC1 (operands[2]) == CONST_INT)
    operands[2] = FUNC0 (FUNC2 (operands[2]) & 0x3f);

  if (FUNC1 (operands[1]) == CONST_INT)
    {
      FUNC3 ("mov\t%1, %3", operands);
    }
  else
    {
      FUNC3 ("sllx\t%H1, 32, %3", operands);
      if (FUNC4 (operands[1], insn) <= 0)
	FUNC3 ("srl\t%L1, 0, %L1", operands);
      FUNC3 ("or\t%L1, %3, %3", operands);
    }

  FUNC6(asm_code, opcode);

  if (which_alternative != 2)
    return FUNC5 (asm_code, "\t%0, %2, %L0\n\tsrlx\t%L0, 32, %H0");
  else
    return FUNC5 (asm_code, "\t%3, %2, %3\n\tsrlx\t%3, 32, %H0\n\tmov\t%3, %L0");
}