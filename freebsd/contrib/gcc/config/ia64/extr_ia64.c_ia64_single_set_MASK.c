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
#define  CODE_FOR_epilogue_deallocate_stack 129 
#define  CODE_FOR_prologue_allocate_stack 128 
 scalar_t__ COND_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC6 (rtx insn)
{
  rtx x = FUNC2 (insn), ret;
  if (FUNC1 (x) == COND_EXEC)
    x = FUNC0 (x);
  if (FUNC1 (x) == SET)
    return x;

  /* Special case here prologue_allocate_stack and epilogue_deallocate_stack.
     Although they are not classical single set, the second set is there just
     to protect it from moving past FP-relative stack accesses.  */
  switch (FUNC4 (insn))
    {
    case CODE_FOR_prologue_allocate_stack:
    case CODE_FOR_epilogue_deallocate_stack:
      ret = FUNC3 (x, 0, 0);
      break;

    default:
      ret = FUNC5 (insn, x);
      break;
    }

  return ret;
}