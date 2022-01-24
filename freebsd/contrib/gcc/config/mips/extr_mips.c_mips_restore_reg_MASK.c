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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GP_REG_FIRST ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_MIPS16 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6 (rtx reg, rtx mem)
{
  /* There's no mips16 instruction to load $31 directly.  Load into
     $7 instead and adjust the return insn appropriately.  */
  if (TARGET_MIPS16 && FUNC3 (reg) == GP_REG_FIRST + 31)
    reg = FUNC5 (FUNC0 (reg), 7);

  if (TARGET_MIPS16 && !FUNC1 (FUNC3 (reg)))
    {
      /* Can't restore directly; move through a temporary.  */
      FUNC4 (FUNC2 (FUNC0 (reg)), mem);
      FUNC4 (reg, FUNC2 (FUNC0 (reg)));
    }
  else
    FUNC4 (reg, mem);
}