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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  regs_live ; 

__attribute__((used)) static void
FUNC2 (int regno, enum machine_mode mode, int life)
{
  int j = hard_regno_nregs[regno][mode];
  if (life)
    while (--j >= 0)
      FUNC1 (regs_live, regno + j);
  else
    while (--j >= 0)
      FUNC0 (regs_live, regno + j);
}