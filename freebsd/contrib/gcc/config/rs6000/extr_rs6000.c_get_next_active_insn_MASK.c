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
 scalar_t__ CLOBBER ; 
 scalar_t__ CODE_FOR_stack_tie ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ USE ; 

__attribute__((used)) static rtx
FUNC7 (rtx insn, rtx tail)
{
  if (insn == NULL_RTX || insn == tail)
    return NULL_RTX;

  while (1)
    {
      insn = FUNC4 (insn);
      if (insn == NULL_RTX || insn == tail)
	return NULL_RTX;

      if (FUNC0 (insn)
	  || FUNC3 (insn)
	  || (FUNC5 (insn)
	      && FUNC1 (FUNC6 (insn)) != USE
	      && FUNC1 (FUNC6 (insn)) != CLOBBER
	      && FUNC2 (insn) != CODE_FOR_stack_tie))
	break;
    }
  return insn;
}