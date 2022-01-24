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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ CALL ; 
 int CALL_INSN ; 
 int CODE_LABEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int INSN ; 
 int JUMP_INSN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ RETURN ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pc_rtx ; 

__attribute__((used)) static enum rtx_code
FUNC6 (rtx x)
{
  if (FUNC1 (x))
    return CODE_LABEL;
  if (FUNC0 (x) == CALL)
    return CALL_INSN;
  if (FUNC0 (x) == RETURN)
    return JUMP_INSN;
  if (FUNC0 (x) == SET)
    {
      if (FUNC2 (x) == pc_rtx)
	return JUMP_INSN;
      else if (FUNC0 (FUNC3 (x)) == CALL)
	return CALL_INSN;
      else
	return INSN;
    }
  if (FUNC0 (x) == PARALLEL)
    {
      int j;
      for (j = FUNC5 (x, 0) - 1; j >= 0; j--)
	if (FUNC0 (FUNC4 (x, 0, j)) == CALL)
	  return CALL_INSN;
	else if (FUNC0 (FUNC4 (x, 0, j)) == SET
		 && FUNC2 (FUNC4 (x, 0, j)) == pc_rtx)
	  return JUMP_INSN;
	else if (FUNC0 (FUNC4 (x, 0, j)) == SET
		 && FUNC0 (FUNC3 (FUNC4 (x, 0, j))) == CALL)
	  return CALL_INSN;
    }
  return INSN;
}