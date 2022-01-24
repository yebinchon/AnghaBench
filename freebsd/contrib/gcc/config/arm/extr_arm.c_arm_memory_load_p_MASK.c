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
 scalar_t__ GENERAL_REGS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ INSN ; 
 scalar_t__ MEM ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ REG ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ SYMBOL_REF ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int) ; 

__attribute__((used)) static bool
FUNC7 (rtx insn)
{
  rtx body, lhs, rhs;;

  if (insn == NULL_RTX || FUNC0 (insn) != INSN)
    return false;

  body = FUNC1 (insn);

  if (FUNC0 (body) != SET)
    return false;

  lhs = FUNC5 (body, 0);
  rhs = FUNC5 (body, 1);

  lhs = FUNC4 (lhs);

  /* If the destination is not a general purpose
     register we do not have to worry.  */
  if (FUNC0 (lhs) != REG
      || FUNC3 (FUNC2 (lhs)) != GENERAL_REGS)
    return false;

  /* As well as loads from memory we also have to react
     to loads of invalid constants which will be turned
     into loads from the minipool.  */
  return (FUNC0 (rhs) == MEM
	  || FUNC0 (rhs) == SYMBOL_REF
	  || FUNC6 (insn, -1, false));
}