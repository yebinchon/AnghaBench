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
 int DFmode ; 
 int /*<<< orphan*/  FIRST_MMX_REG ; 
 int /*<<< orphan*/  FIRST_SSE_REG ; 
 int FUNC0 (int) ; 
 int SFmode ; 
 int XFmode ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

bool
FUNC3 (enum machine_mode mode1, enum machine_mode mode2)
{
  if (mode1 == mode2)
    return true;

  if (FUNC2 (mode1)
      && FUNC2 (mode2))
    return true;

  /* MODE2 being XFmode implies fp stack or general regs, which means we
     can tie any smaller floating point modes to it.  Note that we do not
     tie this with TFmode.  */
  if (mode2 == XFmode)
    return mode1 == SFmode || mode1 == DFmode;

  /* MODE2 being DFmode implies fp stack, general or sse regs, which means
     that we can tie it with SFmode.  */
  if (mode2 == DFmode)
    return mode1 == SFmode;

  /* If MODE2 is only appropriate for an SSE register, then tie with
     any other mode acceptable to SSE registers.  */
  if (FUNC0 (mode2) >= 8
      && FUNC1 (FIRST_SSE_REG, mode2))
    return FUNC1 (FIRST_SSE_REG, mode1);

  /* If MODE2 is appropriate for an MMX (or SSE) register, then tie
     with any other mode acceptable to MMX registers.  */
  if (FUNC0 (mode2) == 8
      && FUNC1 (FIRST_MMX_REG, mode2))
    return FUNC1 (FIRST_MMX_REG, mode1);

  return false;
}