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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/ * regs_live_at ; 

__attribute__((used)) static void
FUNC4 (int regno, enum machine_mode mode, int life, int birth,
		int death)
{
  int j = hard_regno_nregs[regno][mode];
  HARD_REG_SET this_reg;

  FUNC1 (this_reg);
  while (--j >= 0)
    FUNC3 (this_reg, regno + j);

  if (life)
    while (birth < death)
      {
	FUNC2 (regs_live_at[birth], this_reg);
	birth++;
      }
  else
    while (birth < death)
      {
	FUNC0 (regs_live_at[birth], this_reg);
	birth++;
      }
}