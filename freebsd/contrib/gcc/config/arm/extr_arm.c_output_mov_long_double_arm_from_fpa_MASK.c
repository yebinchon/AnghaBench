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
 int IP_REGNUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

const char *
FUNC4 (rtx *operands)
{
  int arm_reg0 = FUNC0 (operands[0]);
  rtx ops[3];

  FUNC1 (arm_reg0 != IP_REGNUM);

  ops[0] = FUNC2 (SImode, arm_reg0);
  ops[1] = FUNC2 (SImode, 1 + arm_reg0);
  ops[2] = FUNC2 (SImode, 2 + arm_reg0);

  FUNC3 ("stf%?e\t%1, [%|sp, #-12]!", operands);
  FUNC3 ("ldm%?fd\t%|sp!, {%0, %1, %2}", ops);
  return "";
}