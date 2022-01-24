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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 

__attribute__((used)) static rtx
FUNC6 (basic_block bb)
{
  rtx insn = FUNC1 (bb);

  if (FUNC3 (insn))
    {
      if (insn == FUNC0 (bb))
	return NULL_RTX;
      insn = FUNC4 (insn);
    }

  while (FUNC5 (insn))
    {
      if (insn == FUNC0 (bb))
	return NULL_RTX;
      insn = FUNC4 (insn);
    }

  if (FUNC2 (insn))
    return NULL_RTX;

  return insn;
}