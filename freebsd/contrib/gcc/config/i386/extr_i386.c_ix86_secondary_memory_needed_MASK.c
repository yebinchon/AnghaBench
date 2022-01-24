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
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int DFmode ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int SFmode ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  TARGET_INTER_UNIT_MOVES ; 
 int /*<<< orphan*/  TARGET_SSE2 ; 
 scalar_t__ UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  optimize_size ; 

int
FUNC8 (enum reg_class class1, enum reg_class class2,
			      enum machine_mode mode, int strict)
{
  if (FUNC2 (class1) != FUNC0 (class1)
      || FUNC2 (class2) != FUNC0 (class2)
      || FUNC4 (class1) != FUNC6 (class1)
      || FUNC4 (class2) != FUNC6 (class2)
      || FUNC3 (class1) != FUNC5 (class1)
      || FUNC3 (class2) != FUNC5 (class2))
    {
      FUNC7 (!strict);
      return true;
    }

  if (FUNC0 (class1) != FUNC0 (class2))
    return true;

  /* ??? This is a lie.  We do have moves between mmx/general, and for
     mmx/sse2.  But by saying we need secondary memory we discourage the
     register allocator from using the mmx registers unless needed.  */
  if (FUNC5 (class1) != FUNC5 (class2))
    return true;

  if (FUNC6 (class1) != FUNC6 (class2))
    {
      /* SSE1 doesn't have any direct moves from other classes.  */
      if (!TARGET_SSE2)
	return true;

      /* If the target says that inter-unit moves are more expensive
	 than moving through memory, then don't generate them.  */
      if (!TARGET_INTER_UNIT_MOVES && !optimize_size)
	return true;

      /* Between SSE and general, we have moves no larger than word size.  */
      if (FUNC1 (mode) > UNITS_PER_WORD)
	return true;

      /* ??? For the cost of one register reformat penalty, we could use
	 the same instructions to move SFmode and DFmode data, but the
	 relevant move patterns don't support those alternatives.  */
      if (mode == SFmode || mode == DFmode)
	return true;
    }

  return false;
}