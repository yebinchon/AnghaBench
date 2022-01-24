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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DImode ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int HI_REGNUM ; 
 int LO_REGNUM ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_EQUAL ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SImode ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC19 (enum machine_mode mode, rtx dest, rtx src)
{
  if (!FUNC17 (dest, mode) && !FUNC16 (src, mode))
    {
      FUNC8 (dest, FUNC9 (mode, src));
      return true;
    }

  /* Check for individual, fully-reloaded mflo and mfhi instructions.  */
  if (FUNC1 (mode) <= UNITS_PER_WORD
      && FUNC5 (src) && FUNC3 (FUNC4 (src))
      && FUNC5 (dest) && FUNC2 (FUNC4 (dest)))
    {
      int other_regno = FUNC4 (src) == HI_REGNUM ? LO_REGNUM : HI_REGNUM;
      if (FUNC1 (mode) <= 4)
	FUNC7 (FUNC11 (FUNC12 (SImode, FUNC4 (dest)),
				  FUNC12 (SImode, FUNC4 (src)),
				  FUNC12 (SImode, other_regno)));
      else
	FUNC7 (FUNC10 (FUNC12 (DImode, FUNC4 (dest)),
				  FUNC12 (DImode, FUNC4 (src)),
				  FUNC12 (DImode, other_regno)));
      return true;
    }

  /* We need to deal with constants that would be legitimate
     immediate_operands but not legitimate move_operands.  */
  if (FUNC0 (src) && !FUNC15 (src, mode))
    {
      FUNC14 (mode, dest, src);
      FUNC18 (FUNC13 (), REG_EQUAL, FUNC6 (src));
      return true;
    }
  return false;
}