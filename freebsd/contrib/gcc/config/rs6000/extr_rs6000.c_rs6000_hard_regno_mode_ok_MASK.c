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
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int) ; 
 scalar_t__ MODE_CC ; 
 scalar_t__ MODE_INT ; 
 int PSImode ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ TARGET_SPE ; 
 scalar_t__ UNITS_PER_FP_WORD ; 
 scalar_t__ UNITS_PER_WORD ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int
FUNC13 (int regno, enum machine_mode mode)
{
  /* The GPRs can hold any mode, but values bigger than one register
     cannot go past R31.  */
  if (FUNC8 (regno))
    return FUNC8 (regno + FUNC7 (regno, mode) - 1);

  /* The float registers can only hold floating modes and DImode.
     This also excludes decimal float modes.  */
  if (FUNC4 (regno))
    return
      (FUNC9 (mode)
       && !FUNC3 (mode)
       && FUNC4 (regno + FUNC7 (regno, mode) - 1))
      || (FUNC5 (mode) == MODE_INT
	  && FUNC6 (mode) == UNITS_PER_FP_WORD);

  /* The CR register can only hold CC modes.  */
  if (FUNC2 (regno))
    return FUNC5 (mode) == MODE_CC;

  if (FUNC12 (regno))
    return mode == PSImode;

  /* AltiVec only in AldyVec registers.  */
  if (FUNC0 (regno))
    return FUNC1 (mode);

  /* ...but GPRs can hold SIMD data on the SPE in one register.  */
  if (FUNC10 (regno) && TARGET_SPE && FUNC11 (mode))
    return 1;

  /* We cannot put TImode anywhere except general register and it must be
     able to fit within the register set.  */

  return FUNC6 (mode) <= UNITS_PER_WORD;
}