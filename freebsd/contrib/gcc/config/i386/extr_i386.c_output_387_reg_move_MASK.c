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
 scalar_t__ FIRST_STACK_REG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_DEAD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 char const* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

const char *
FUNC5 (rtx insn, rtx *operands)
{
  if (FUNC1 (operands[1])
      && FUNC3 (insn, REG_DEAD, FUNC0 (operands[1])))
    {
      if (FUNC0 (operands[0]) == FIRST_STACK_REG)
	return FUNC4 (operands, 0);
      return "fstp\t%y0";
    }
  if (FUNC2 (operands[0]))
    return "fld%z1\t%y1";
  return "fst\t%y0";
}