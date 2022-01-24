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
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*) ; 

__attribute__((used)) static bool
FUNC4 (rtx x, rtx x_regs, rtx insn, basic_block bb,
		     int *regs_set_before)
{
  rtx first = FUNC0 (bb);

  if (!FUNC3 (x_regs, regs_set_before))
    return true;

  for ( ; insn != FUNC1 (first); insn = FUNC1 (insn))
    if (FUNC2 (x, x_regs, insn, true))
      return true;

  return false;
}