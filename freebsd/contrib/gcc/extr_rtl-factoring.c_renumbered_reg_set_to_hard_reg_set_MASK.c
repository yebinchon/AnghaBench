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
typedef  int /*<<< orphan*/  regset ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int max_regno ; 
 scalar_t__* reg_renumber ; 

__attribute__((used)) static void
FUNC3 (HARD_REG_SET * hregs, regset regs)
{
  int r;

  FUNC1 (*hregs, regs);
  for (r = FIRST_PSEUDO_REGISTER; r < max_regno; r++)
    if (FUNC0 (regs, r) && reg_renumber[r] >= 0)
      FUNC2 (*hregs, reg_renumber[r]);
}