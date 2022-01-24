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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  USE ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC6 (rtx reg, rtx from_insn, rtx to_insn)
{
  rtx insn;

  if (from_insn == to_insn)
    return 0;

  for (insn = FUNC2 (from_insn); insn != to_insn; insn = FUNC2 (insn))
    if (FUNC1 (insn)
	&& (FUNC5 (reg, FUNC3 (insn))
	   || (FUNC0 (insn) && FUNC4 (insn, USE, reg))))
      return 1;
  return 0;
}