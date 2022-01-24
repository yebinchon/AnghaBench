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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ MODE_CC ; 
 scalar_t__ MODE_PARTIAL_INT ; 
 scalar_t__ MODE_RANDOM ; 
 int QImode ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_PARTIAL_REG_STALL ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 

bool
FUNC11 (int regno, enum machine_mode mode)
{
  /* Flags and only flags can only hold CCmode values.  */
  if (FUNC0 (regno))
    return FUNC2 (mode) == MODE_CC;
  if (FUNC2 (mode) == MODE_CC
      || FUNC2 (mode) == MODE_RANDOM
      || FUNC2 (mode) == MODE_PARTIAL_INT)
    return 0;
  if (FUNC1 (regno))
    return FUNC5 (mode);
  if (FUNC4 (regno))
    {
      /* We implement the move patterns for all vector modes into and
	 out of SSE registers, even when no operation instructions
	 are available.  */
      return (FUNC10 (mode)
	      || FUNC9 (mode)
	      || FUNC7 (mode)
	      || FUNC8 (mode));
    }
  if (FUNC3 (regno))
    {
      /* We implement the move patterns for 3DNOW modes even in MMX mode,
	 so if the register is available at all, then we can move data of
	 the given mode into or out of it.  */
      return (FUNC7 (mode)
	      || FUNC8 (mode));
    }

  if (mode == QImode)
    {
      /* Take care for QImode values - they can be in non-QI regs,
	 but then they do cause partial register stalls.  */
      if (regno < 4 || TARGET_64BIT)
	return 1;
      if (!TARGET_PARTIAL_REG_STALL)
	return 1;
      return reload_in_progress || reload_completed;
    }
  /* We handle both integer and floats in the general purpose registers.  */
  else if (FUNC6 (mode))
    return 1;
  else if (FUNC5 (mode))
    return 1;
  /* Lots of MMX code casts 8 byte vector modes to DImode.  If we then go
     on to use that value in smaller contexts, this can easily force a
     pseudo to be allocated to GENERAL_REGS.  Since this is no worse than
     supporting DImode, allow it.  */
  else if (FUNC8 (mode) || FUNC7 (mode))
    return 1;

  return 0;
}