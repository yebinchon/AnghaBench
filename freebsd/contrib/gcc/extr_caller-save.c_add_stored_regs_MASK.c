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
typedef  int /*<<< orphan*/  regset ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CLOBBER ; 
 int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int** hard_regno_nregs ; 
 int FUNC7 (int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8 (rtx reg, rtx setter, void *data)
{
  int regno, endregno, i;
  enum machine_mode mode = FUNC1 (reg);
  int offset = 0;

  if (FUNC0 (setter) == CLOBBER)
    return;

  if (FUNC0 (reg) == SUBREG && FUNC3 (FUNC6 (reg)))
    {
      offset = FUNC7 (FUNC2 (FUNC6 (reg)),
				    FUNC1 (FUNC6 (reg)),
				    FUNC5 (reg),
				    FUNC1 (reg));
      reg = FUNC6 (reg);
    }

  if (!FUNC3 (reg) || FUNC2 (reg) >= FIRST_PSEUDO_REGISTER)
    return;

  regno = FUNC2 (reg) + offset;
  endregno = regno + hard_regno_nregs[regno][mode];

  for (i = regno; i < endregno; i++)
    FUNC4 ((regset) data, i);
}