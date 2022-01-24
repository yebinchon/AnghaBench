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
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC9 (rtx first)
{
  rtx insn;
  rtx testreg = FUNC6 (VOIDmode, -1);

  FUNC3 (true);
  FUNC7 ();

  for (insn = first; insn; insn = FUNC1 (insn))
    {
      if (FUNC0 (insn))
	FUNC8 (insn, testreg);

      FUNC4 (insn);
    }

  /* Clean up.  */
  FUNC5 ();
  FUNC2 ();
}