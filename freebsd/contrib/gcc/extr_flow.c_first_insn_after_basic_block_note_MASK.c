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
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

rtx
FUNC5 (basic_block block)
{
  rtx insn;

  /* Get the first instruction in the block.  */
  insn = FUNC0 (block);

  if (insn == NULL_RTX)
    return NULL_RTX;
  if (FUNC1 (insn))
    insn = FUNC2 (insn);
  FUNC4 (FUNC3 (insn));

  return FUNC2 (insn);
}