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
 int /*<<< orphan*/  IP_REGNUM ; 
 scalar_t__ LR_REGNUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ TARGET_INTERWORK ; 
 scalar_t__ arm_arch4t ; 
 int /*<<< orphan*/  arm_arch5 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

const char *
FUNC4 (rtx *operands)
{
  FUNC1 (!arm_arch5); /* Patterns should call blx <reg> directly.  */

  /* Handle calls to lr using ip (which may be clobbered in subr anyway).  */
  if (FUNC0 (operands[0]) == LR_REGNUM)
    {
      operands[0] = FUNC2 (SImode, IP_REGNUM);
      FUNC3 ("mov%?\t%0, %|lr", operands);
    }

  FUNC3 ("mov%?\t%|lr, %|pc", operands);

  if (TARGET_INTERWORK || arm_arch4t)
    FUNC3 ("bx%?\t%0", operands);
  else
    FUNC3 ("mov%?\t%|pc, %0", operands);

  return "";
}