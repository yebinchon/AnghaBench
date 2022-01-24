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
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
#define  CALL_INSN 131 
#define  CODE_LABEL 130 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
#define  INSN 129 
#define  JUMP_INSN 128 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2 (rtx insn)
{
  /* Basing the location of the pool on the loop depth is preferable,
     but at the moment, the basic block information seems to be
     corrupt by this stage of the compilation.  */
  int base_cost = 50;
  rtx next = FUNC1 (insn);

  if (next != NULL && FUNC0 (next) == CODE_LABEL)
    base_cost -= 20;

  switch (FUNC0 (insn))
    {
    case CODE_LABEL:
      /* It will always be better to place the table before the label, rather
	 than after it.  */
      return 50;

    case INSN:
    case CALL_INSN:
      return base_cost;

    case JUMP_INSN:
      return base_cost - 10;

    default:
      return base_cost + 10;
    }
}