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
 scalar_t__ ASM_INPUT ; 
 scalar_t__ ASM_OPERANDS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_NORETURN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC10 (rtx insn)
{
  if (!FUNC3 (insn))
    return false;

  if ((FUNC0 (insn)
       && !FUNC6 (insn)
       && !FUNC9 (insn, REG_NORETURN, NULL)
       && !FUNC1 (insn)))
    return true;

  return ((FUNC2 (FUNC5 (insn)) == ASM_OPERANDS
	   && FUNC4 (FUNC5 (insn)))
	  || (FUNC2 (FUNC5 (insn)) == PARALLEL
	      && FUNC8 (insn) != -1
	      && FUNC4 (FUNC7 (FUNC5 (insn), 0, 0)))
	  || FUNC2 (FUNC5 (insn)) == ASM_INPUT);
}