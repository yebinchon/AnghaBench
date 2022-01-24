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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static rtx
FUNC4 (rtx insn)
{
  basic_block bb = FUNC1 (insn);

  if (!bb)
    return NULL_RTX;

  while (insn != FUNC0 (bb))
    {
      insn = FUNC3 (insn);
      if (FUNC2 (insn))
        return insn;
    }
  return NULL_RTX;
}