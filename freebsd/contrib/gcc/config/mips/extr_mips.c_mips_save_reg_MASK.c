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
 scalar_t__ DFmode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GP_REG_FIRST ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_FLOAT64 ; 
 scalar_t__ TARGET_MIPS16 ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC12 (rtx reg, rtx mem)
{
  if (FUNC0 (reg) == DFmode && !TARGET_FLOAT64)
    {
      rtx x1, x2;

      if (FUNC10 (mem, reg))
	FUNC9 (mem, reg);
      else
	FUNC4 (mem, reg);

      x1 = FUNC7 (FUNC11 (mem, 0), FUNC11 (reg, 0));
      x2 = FUNC7 (FUNC11 (mem, 1), FUNC11 (reg, 1));
      FUNC8 (FUNC6 (VOIDmode, FUNC5 (2, x1, x2)));
    }
  else
    {
      if (TARGET_MIPS16
	  && FUNC3 (reg) != GP_REG_FIRST + 31
	  && !FUNC1 (FUNC3 (reg)))
	{
	  /* Save a non-mips16 register by moving it through a temporary.
	     We don't need to do this for $31 since there's a special
	     instruction for it.  */
	  FUNC4 (FUNC2 (FUNC0 (reg)), reg);
	  FUNC4 (mem, FUNC2 (FUNC0 (reg)));
	}
      else
	FUNC4 (mem, reg);

      FUNC8 (FUNC7 (mem, reg));
    }
}